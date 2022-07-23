const express = require("express");
const db = require(__dirname + "/../modules/db-connect2");
const { toDateString, toDatetimeString } = require(__dirname +
  "/../modules/date-format");
const moment = require("moment-timezone");
const router = express.Router();
const upload = require(__dirname + "/../modules/upload-images");
const Joi = require("joi");

const getListHandler = async (req, res) => {
  let output = {
    perPage: 10,
    page: 1,
    totalRows: 0,
    totalPages: 0,
    code: 0,
    error: "",
    query: {},
    rows: [],
  };
  let page = +req.query.page || 1;
  let search = req.query.search || "";
  let birthBegin = req.query.birthBegin || "";
  let birthEnd = req.query.birthEnd || "";
  let where = "WHERE 1";
  if (search) {
    where += ` AND name LIKE ${db.escape("%" + search + "%")} `;
    output.query.search = search;
    if (birthBegin) {
      const bb = moment(birthBegin);
      if (bb.isValid()) {
        where += ` AND birthday >= '${bb.format("YYYY-MM-DD")}' `;
        output.query.beginDate = bb.format("YYYY-MM-DD");
      }
    }

    if (birthEnd) {
      const be = moment(birthEnd);
      if (be.isValid()) {
        where += ` AND birthday >= '${be.format("YYYY-MM-DD")}' `;
        output.query.birthEnd = be.format("YYYY-MM-DD");
      }
    }
    output.showString = where;
  }

  if (page < 1) {
    output.code = 401;
    output.error = "頁碼不足";
    return output;
  }

  const mysql01 = `SELECT COUNT(1) totalRows FROM member ${where} `;
  const [[{ totalRows }]] = await db.query(mysql01);
  let totalPages = 0;
  if (totalRows) {
    totalPages = Math.ceil(totalRows / output.perPage);
    if (page > totalPages) {
      output.totalPages = totalPages;
      output.code = 402;
      output.error = "頁碼太多";
      return output;
    }

    const mysql02 = `SELECT * FROM member ${where} ORDER BY sid DESC LIMIT ${
      (page - 1) * output.perPage
    }, ${output.perPage}`;
    const [m2] = await db.query(mysql02);
    m2.forEach((el) => (el.birthday = toDateString(el.birthday)));
    output.rows = m2;
  }
  output.code = 200;
  output = { ...output, page, totalRows, totalPages };

  return output;
};

router.get("/", async (req, res) => {
  const output = await getListHandler(req, res);
  switch (output.code) {
    case 410:
      return res.redirect(`?page=1`);
      break;
    case 420:
      return res.redirect(`?page=${output.totalPages}`);
      break;
  }
  res.render("member/main", output);
  if (!req.session.member) {
    res.render("member/main-noadmin", output);
  } else {
    res.render("member/main", output);
  }
});

router.get('/profile', async (req, res) => {
  if (!req.session.member) {
      return res.redirect('/');
  }
  res.render('member/profile');
});

// router.get("/add", async (req, res) => {
//   res.render("member/add");
// });

router.use((req, res, next) => {
  next();
});

router.get("/add", async (req, res) => {
  if (!req.session.member) {
    return res.redirect("/");
  }
  res.render("member/add");
});
// router.post("/add", upload.none(), (req, res) => {
//   res.json(req.body);
// });

router.post("/add", upload.none(), async (req, res) => {
  if (!req.session.member) {
    return res.json({
      success: false,
      error: "Please login before executing operations",
    });
  }

  const schema = Joi.object({
    name: Joi.string().min(3).required(),
    email: Joi.string().email().required(),
    mobile: Joi.string(),
    birthday: Joi.any(),
    address: Joi.string(),
  });

  console.log(schema.validate(req.body, { abortEarly: false })); //格式不符還是先放行資料傳送
  // res.json(schema.validate(req.body, { abortEarly: false }));
  // const sql =
  //   "INSERT INTO `member`( `name`, `email`, `mobile`, `birthday`, `address`, `created_at` ) VALUES (?, ?, ?, ?, ?, NOW())";
  // const { name, email, mobile, birthday, address } = req.body;
  // const { results } = await db.query(sql, [
  //   name,
  //   email,
  //   mobile,
  //   birthday,
  //   address,
  // ]);
  // res.json(results);

  //用這個寫法要注意對應的欄位數量必須一致
  const sql = "INSERT INTO `member` SET ?"; //非標準的sql語法
  const insertData = { ...req.body, created_at: new Date() }; //補這欄處理created_at的空值問題
  const [results] = await db.query(sql, [insertData]);
  res.json(results);
});

router.get("/api", async (req, res) => {
  const output = await getListHandler(req, res);
  res.json(output);
});

router.get("/api-auth", async (req, res) => {
  let output = {
    success: false,
    error: "",
  };

  if (res.locals.loginUser && res.locals.loginUser.account) {
    output = { ...(await getListHandler(req, res)), success: true };
  } else {
    output.error = "沒有授權";
  }
  output.loginUser = res.locals.loginUser;
  res.json(output);
});

module.exports = router;

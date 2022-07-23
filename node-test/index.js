require("dotenv").config();

const express = require("express");
const app = express();
const multer = require("multer");
// const upload = multer({ dest: "temp_uploads" });
const upload = require(__dirname + "/modules/upload-images");
const session = require("express-session");
const { json } = require("express");
const moment = require("moment-timezone");
const axios = require("axios");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");

const { toDateString, toDatetimeString } = require(__dirname +
  "/modules/date-format");

const db = require(__dirname + "/modules/db-connect2");
const MysqlStore = require("express-mysql-session")(session);
const sessionStore = new MysqlStore({}, db);

app.use(express.static("public"));
app.use("/bootstrap", express.static("node_modules/bootstrap/dist"));
app.use("/joi", express.static("node_modules/joi/dist"));

app.set("view engine", "ejs");
app.set("case sensitive routing", true);

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(require("cors")());

const corsOptions = {
  credentials: true,
  origin: (origin, cb) => {
    console.log({ origin });
    cb(null, true);
  },
};
app.use(cors(corsOptions));

app.use(
  session({
    saveUninitialized: false,
    resave: false,
    secret: "djfewkuejfkhajkjahahajhjh",
    store: sessionStore,
    cookie: {
      maxAge: 120000,
    },
  })
);

app.use((req, res, next) => {
  // res.locals.cookiemon = "餅乾怪獸";
  res.locals.toDateString = toDateString;
  res.locals.toDatetimeString = toDatetimeString;
  res.locals.session = req.session;

  const auth = req.get("Authorization");
  res.locals.loginUser = null;
  if (auth && auth.indexOf("Bearer ") === 0) {
    const token = auth.slice(7);
    res.locals.loginUser = jwt.verify(token, process.env.JWT_SECRET);
  }

  next();
});

app.use("/address-book", require(__dirname + "/routes/address-book"));
app.use("/carts", require(__dirname + "/routes/carts"));

app
  .route("/form-data")
  .get((req, res) => {
    res.render("form-data");
  })
  .post((req, res) => {
    const { email, password } = req.body;
    res.render("form-data", { email, password });
  });

app.post("/try-upload", upload.single("avatar"), (req, res) => {
  res.json(req.file);
});

app.post("/try-uploads", upload.array("photos"), (req, res) => {
  res.json(req.files);
});

// const bodyParser = express.urlencoded({extended: false});
app.post("/post-test", (req, res) => {
  res.json(req.body);
});

app
  .route("/login")
  .get(async (req, res) => {
    res.render("login");
  })
  .post(async (req, res) => {
    const output = {
      success: false,
      error: "",
      code: 0,
    };
    const sql = "SELECT * FROM `member` WHERE account = ?";
    const [q1] = await db.query(sql, [req.body.account]);

    if (!q1.length) {
      output.code = 405;
      output.error = "Your account is error";
      return res.json(output);
    }

    output.success = await bcrypt.compare(req.body.password, q1[0].pass_hash);
    if (!output.success) {
      output.code = 406;
      output.error = "Your password is error";
    } else {
      req.session.member = {
        sid: q1[0].sid,
        account: q1[0].account,
      };
    }
    res.json(output);
  });

app
  .route("/login-jwt")
  .get(async (req, res) => {
    res.render("login-jwt");
  })
  .post(async (req, res) => {
    const output = {
      success: false,
      error: "",
      code: 0,
      data: {},
    };
    const sql = "SELECT * FROM member WHERE account=?";
    const [r1] = await db.query(sql, [req.body.account]);

    if (!r1.length) {
      // 帳號錯誤
      output.code = 401;
      output.error = "帳密錯誤";
      return res.json(output);
    }
    //const row = r1[0];

    output.success = await bcrypt.compare(req.body.password, r1[0].pass_hash);
    if (!output.success) {
      // 密碼錯誤
      output.code = 402;
      output.error = "帳密錯誤";
    } else {
      // 成功登入
      const token = jwt.sign(
        {
          sid: r1[0].sid,
          account: r1[0].account,
        },
        process.env.JWT_SECRET
      );

      output.data = {
        sid: r1[0].sid,
        token,
        account: r1[0].account,
      };
    }

    res.json(output);
  });

app.get("/logout", (req, res) => {
  delete req.session.member;
  res.redirect("/");
});

app.get("/try-session", (req, res) => {
  req.session.my_test = req.session.my_test || 0;
  req.session.my_test++;
  res.json({
    my_test: req.session.my_test,
    session: req.session,
  });
});

app.get("/try-params1/:action/:id", (req, res) => {
  res.json({ code: 1, params: req.params });
});
app.get("/try-params1/:action", (req, res) => {
  res.json({ code: 2, params: req.params });
});
app.get("/try-params1/:action?/:id?", (req, res) => {
  res.json({ code: 3, params: req.params });
});

app.get("/try-json", (req, res) => {
  const data = require(__dirname + "/data/d001");
  console.log(data);
  res.locals.rows = data;
  res.render("try-json");
});

app.get("/try-moment", (req, res) => {
  const fm = "YYYY-MM-DD HH:mm:ss";
  const m1 = moment("2022-06-28");
  const m2 = moment();

  res.json({
    "local-m1": m1.format(fm),
    "local-m2": m2.format(fm),
    "local-m1-se": m1.tz("Europe/Stockholm").format(fm),
    "local-m2-se": m2.tz("Europe/Stockholm").format(fm),
  });
});

app.get(/^\/cookmon\/?/i, (req, res) => {
  res.send({ url: req.url });
});
app.get(["/aaa", "/bbb"], (req, res) => {
  res.send({ url: req.url, code: "array" });
});

const adminsRouter = require(__dirname + "/routes/admin");
app.use("/admin", adminsRouter);
app.use(adminsRouter);

app.get("/qs-test", (req, res) => {
  res.json(req.query);
});

app.get("/", (req, res) => {
  res.render("main", { name: "Cookie Monster" });
});

app.get("/google", (req, res) => {
  axios.get("https://www.google.com/").then(function (response) {
    // handle success
    console.log(response);
    res.send(response.data);
  });
});

app.use((req, res) => {
  res.send(`<h1>404 Not Found</h1>
  <img src="/imgs/404.webp" alt=""/>`);
});

app.listen(process.env.PORT, () => {
  console.log(`My Port:${process.env.PORT}`);
});

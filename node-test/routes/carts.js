const express = require("express");
const db = require(__dirname + "/../modules/db-connect2");
const { toDateString, toDatetimeString } = require(__dirname +
  "/../modules/date-format");
const moment = require("moment-timezone");
const Joi = require("joi");
const upload = require(__dirname + "/../modules/upload-images");

const router = express.Router(); // 建立 router 物件
const fake_user = 5;

const getUserCart = async (user_id) => {
  const sql = `SELECT p.*, c.quantity 
    FROM carts c 
    JOIN products p 
    ON c.product_id=p.sid 
    WHERE user_id=?
    ORDER BY c.created_at`;

  const [r] = await db.query(sql, [user_id]);
  return r;
};

router.use((req, res, next) => {
  next();
});
// CRUD

router.post("/", async (req, res) => {
  const output = {
    success: false,
    error: "",
  };
  if (!req.body.product_id || !req.body.quantity) {
    output.error = "參數不足";
    return res.json(output);
  }
  const sql = `SELECT * FROM products WHERE sid=?`;
  const [r1] = await db.query(sql, [req.body.product_id]);
  if (!r1.length) {
    output.error = "查無此項目";
    return res.json(output);
  }

  const sql2 =
    "INSERT INTO `carts`(`user_id`, `product_id`, `quantity`) VALUES (?, ?, ?)";
  // 假設用戶編號 fake_user
  const [r2] = await db.query(sql2, [
    fake_user,
    req.body.product_id,
    req.body.quantity,
  ]);

  if (r2.affectedRows) {
    output.success = true;
  }

  output.cart = await getUserCart(fake_user);
  res.json(output);
  // product_id, quantity
});

router.get("/", async (req, res) => {
  res.json(await getUserCart(fake_user));
});

router.put("/", async (req, res) => {
  const sql =
    "UPDATE `carts` SET `user_id`=?,`product_id`=?,`quantity`=? WHERE 1";
  const [r3] = await db.query(sql, [
    fake_user,
    req.body.product_id,
    req.body.quantity,
  ]);
  res.json(await getUserCart(fake_user));
});
router.delete("/", async (req, res) => {
  const sql = "DELETE FROM carts WHERE user_id=? AND product_id=?";
  await db.query(sql, [fake_user, req.body.product_id]);

  res.json(await getUserCart(fake_user));
});

module.exports = router;

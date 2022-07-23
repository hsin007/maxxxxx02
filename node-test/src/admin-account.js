const db = require(__dirname + "/../modules/db-connect2.js");

const bcryptjs = require("bcryptjs");

const sql =
  "INSERT INTO `member`( `account`, `pass_hash`, `created_at`) VALUES ('Admin', ? , NOW()) ";

(async () => {
  var hash = await bcryptjs.hash("Admin000", 10);

  console.log(hash);

  const r = await db.query(sql, [hash]);
  console.log(r);
  process.exit();
})();

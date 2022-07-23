const db = require(__dirname + "/../modules/db-connect2");

(async () => {
  const [results, fields] = await db.query("SELECT * FROM `member`");
  console.log(results);
  process.exit();
})();

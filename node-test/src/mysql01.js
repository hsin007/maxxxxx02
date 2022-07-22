const db = require(__dirname + "/../modules/db-connect2");

(async () => {
  const [results, fields] = await db.query("SELECT * FROM `address_book`");
  console.log(results);
  process.exit();
})();

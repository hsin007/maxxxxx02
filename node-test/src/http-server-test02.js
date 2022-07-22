const http = require("http");
const fs = require("fs");

const server = http.createServer((req, res) => {
  fs.writeFile(
    __dirname + "/../data/header01.txt",
    JSON.stringify(req.headers),
    (error) => {
      res.writeHead(200, { "content-type": "text/html; charset=utf8" });

      if (error) {
        console.log(error);
        res.end(`<h1>寫入錯誤</h1>`);
      } else {
        res.end(`<h1>成功寫入！！！</h1>`);
      }
    }
  );
});
server.listen(3000);

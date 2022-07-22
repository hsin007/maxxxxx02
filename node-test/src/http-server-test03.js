const http = require("http");
const fs = require("fs").promises;

const server = http.createServer(async (req, res) => {
  res.writeHead(200, { "content-type": "text/html; charset=utf8" });
  try {
    await fs.writeFile(
      __dirname + "/../data/header02.txt",
      JSON.stringify(req.headers)
    );
    res.end(`<h1>成功寫入！！！</h1>`);
  } catch (ex) {
    console.log(error);
    res.end("寫入錯誤");
  }
});
server.listen(3000);

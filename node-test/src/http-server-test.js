const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "content-type": "text/html" });
  res.end(`<h1>COOOOOKIE MONSTER!!!!!!</h1>
  <h2>${req.url}</h2>`);
});
server.listen(3000);

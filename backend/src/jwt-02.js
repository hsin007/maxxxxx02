require("dotenv").config();

const jwt = require("jsonwebtoken");

const token =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Nzc3LCJhY2NvdW50IjoibWF4aW5lIiwiaWF0IjoxNjU4MzAzMDE4fQ.D0haXO1oo8VQLZeNDjEaRqGMnNjdISX1JKjRulrPbPQ";

jwt.verify(token, process.env.JWT_SECRET, (error, decoded) => {
  if (error) {
    console.log({ error });
  }
  console.log(decoded);
  process.exit();
});

console.log(token);

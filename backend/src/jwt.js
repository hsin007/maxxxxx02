require("dotenv").config();

const jwt = require("jsonwebtoken");

const token = jwt.sign({ id: 777, account: "max" }, process.env.JWT_SECRET);

// token1
// eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Nzc3LCJhY2NvdW50IjoibWF4aW5lIiwiaWF0IjoxNjU4MzAzMDE4fQ.D0haXO1oo8VQLZeNDjEaRqGMnNjdISX1JKjRulrPbPQ

// token2
// eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Nzc3LCJhY2NvdW50IjoibWF4aW5lIiwiaWF0IjoxNjU4MzAzMDQxfQ.IRNf3GD55s57V3Zyct_sfDjxnmgfUgv8_e6CQCc8dkw

console.log(token);

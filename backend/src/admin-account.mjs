import bcryptjs from "bcryptjs";

const hash = await bcryptjs.hash("Admin000", 10);
// 密碼後記得帶參數

console.log({ hash });

function genObject() {
  return {
    name: "maxine001",
    age: 777,
  };
}

genObject.max01 = () => {
  console.log("max01");
};

const obj = genObject();
console.log(obj);
genObject.max01();

console.log(genObject.constructor.name);

class Person {
  gender = "female";
  constructor(name = " ", age = 20) {
    this.name = name;
    this.age = age;
  }
  toJSON() {
    return {
      name: this.name,
      age: this.age,
      gender: this.gender,
      data: "我是字串",
    };
  }
  toString() {
    return JSON.stringify(this, null, 4);
  }
}
export default Person;

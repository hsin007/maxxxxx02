import Person from "./person.js";

class Employee extends Person {
  constructor(name = " ", age = 20, employee_id) {
    super(name, age);
    this.employee_id = employee_id;
  }
  toJSON() {
    const { name, age, employee_id } = this;
    return { name, age, employee_id };
  }
  // toString() {
  //   return JSON.stringify(this, null, 4);
  // }
}
export default Employee;

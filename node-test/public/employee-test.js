import Person from "./person.js";
import Employee from "./employee.js";

const person1 = new Employee("maxine", 777, "X007");
const person2 = new Person("Gabby");

console.log(person1);
console.log("" + person1);
console.log(person2.toJSON());
console.log(JSON.stringify(person2, null, 4));

import Person from "./person.js";

const person1 = new Person("maxine", 777);
const person2 = new Person("Gabby");

console.log(person1);
console.log("" + person1);
console.log(person2.toJSON());
console.log(JSON.stringify(person2, null, 4));

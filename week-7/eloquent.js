
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var firstName = "Alana"
var lastName = "Farkas"
console.log(firstName + " " + lastName)

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" Paste your program into the eloquent.js file.

prompt("Hey you! What's your fav food in the whole world?");
confirm("That's my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var number = 1; number <= 100; number = number + 1) {
  if (number % 3 === 0 && number % 5 == 0) {
  console.log("FizzBuzz");
}

  else if (number % 3 === 0) {
    console.log("Fizz");    
}
else if (number % 5 == 0) {
  console.log("Buzz");
}
else {
console.log(number);
  }
}


// Functions

// Complete the `minimum` exercise.

function minimum(x, y) {
  console.log(Math.min(x, y))
}

minimum(19, 99)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {name: "Alana", age: 27, favoriteFoods: ["sunflower seeds", "lollipops", "twizzlers"], quirk: "I can wiggle my ears"}


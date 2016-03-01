
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


// Release 1:

// INTRODUCTION:
// Did you learn anything new about JavaScript or programming in general?
// - Yes, I always enjoy learning about the history of languages. I suppose most programming languages have a short history but JavaScript seems to have been around a lot longer than say, Ruby, and it makes learning the language less intimidating knowing that only a few short years ago NOBODY knew this language.
// Are there any concepts you feel uncomfortable with?
// - At this point I'm not super clear on client-side vs. server-side languages and what Node.js is but I'm sure these things will become more clear soon.

// VALUES AND OPERATORS:
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// - Strings in Ruby and JavaScript share a lot of the same behaviors -- wrapping anything in quotation marks will return a string value in both languages. However, to output a string to the console varies widely in JavaScript and Ruby. In Ruby, we can use p, puts, or print to output a value to the screen. JavaScript requires you type console.log() to enable an output to the screen. Operators in both Ruby and JavaScript include <, >, =>, <= but a major difference between the two languages with respect to operators is that in order to test equality in JavaScript, we'd use a triple equal sign (===) instead of just two like in Ruby (==). I'll need to watch out for this going forward!

// PROGRAM STRUCTRE:
// What is an expression?
// - An expression is anything that produces a value. So the number 100 expresses the value 100. The expression "Hello" produces a string value. The expression 3 + 4 produces the value 7.

// What is the purpose of semicolons in JavaScript? Are they always required?
// - Semicolons are not always required in some obscure (to us) cases. At this stage we should always end our expressions with a semicolon to note where the statement or expression ends, and where you've started a new statement or expression.

// What causes a variable to return undefined?
// - Defining a variable name without assigning the variable a value will return an undefined variable.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// - console.log will output the value to the console. console.log is similar to p, puts, and print in Ruby.


// Describe while and for loops
// - While loops executes a function while a certain condition is true. For loops require that you designate a number of times for the function to execute.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// - Variable naming syntax differs greatly between Ruby and JavaScript. Ruby would have you write local variables in all lower case and joining several words together with underscores, while JavaScript syntax required the first word to be lower case, with the next word uppercase. So variable my_name in Ruby becomes myName in JavaScript. That'll be hard to get used to at first.

// FUNCTIONS:
// What are the differences between local and global variables in JavaScript?
// - Variables defined outside of a function is a global variable. Variables defined inside a function are only defined and understood from within that function.

// When should you use functions?
// - I understand functions in JavaScript to be a lot like methods in Ruby. Functions should be used when a programmer wants to create a new code block dictating behavior. Functions can take arguments or parameters and contain code in its body the same way methods do in Ruby.

// What is a function declaration?
// - A function to add two to any number the function is passed can be declared in this way and I'll call the function underneath:
// function add(x, y) {
//   console.log(x + y)
// }

// add(2, 4)

// DATA STRUCTURES:
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// - Using a dot to look up a property means that whatever comes after the dot is the variable name pointing to the property--meaning calling array.length on your array will return the length of the array. Using brackets to look up a property will evaluate whatever is inside the bracket so if you wanted the second element of an array, you'd write array[1].

// What is a JavaScript object with a name and value property similar to in Ruby?
// JavaScript objects remind me a lot of Ruby hashes!

// Release 2:

// What are the biggest similarities and differences between JavaScript and Ruby?
// The biggest difference apparent to me now is the differences in readability. Ruby looks so succinct and elegant compared to all the ugly brackets and semicolons everywhere in JavaScript--they're ugly but the big problem is that my eyes/brain aren't used to reading JavaScript at all. Nice method names in Ruby are also preferable to the long coded, long-winded JavaScript notations. There are a lot of similarities in how the languages work that I'm glad for -- booleans, operators, strings, numbers, and arrays seem to have the same functionalities across both languages.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// Learning about stack order while reading about JavaScript helped clear up some things about calling methods outside of a class in Ruby. I had help during office hours to see me through the Ruby errors I was coming up against but I think if I had read this article last week I wouldn't have had to go to those office hours. 

// How do you feel about diving into JavaScript after reading these chapters?
// I don't feel good! I mean, I feel good about learning a new language and new skills but it seems like JavaScript isn't as elegant or eloquent as Ruby. I was really starting to catch my Ruby groove, too! 














// I worked on this challenge with Oscar DelGadillo for 2.5 hours.

// Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.

// Pseudocode
// Input: Integer
// Output: String
// Steps: IF integer is 3 digits or less, return number
// ELSE IF integer is greater than 3 digits, transform integer into an array. LOOP through array and add a comma after every third digit

// commas_needed = number.length / 3 IF number.length % 3 != 0
// commas_needed 

// function commas(number) {
//   var commasNeeded = Math.floor(String(number).length/3);
//   var digitArray = String(number).split("").reverse();
//   if (String(number).length <= 3) {
//     return number;
//   } else {
//     if (String(number).length == 4) {
//       digitArray.splice(3, 0, ",");;
//     } else {
//       digitArray.splice(3, 0, ",");
//       var commaPosition = 7;
//       for (var i = 0; i < commasNeeded - 1; i++) {
//         digitArray.splice(commaPosition, 0, ",");
//         commaPosition += 4;
//       }
//     }
//   }
//   if (String(number).length % 3 === 0) {
//     digitArray.reverse().shift();
//     return digitArray.join("");
//   } else {
//     return digitArray.reverse().join("");
//   }
// };


// Refactored Solution

function commas(number) {
  var commasNeeded = Math.floor(String(number).length/3);
  var digitArray = String(number).split("").reverse();

  if (String(number).length <= 3) {
    return number;
  } 

  else {
    if (String(number).length == 4) {
      digitArray.splice(3, 0, ",");;
    } 

    else {
      digitArray.splice(3, 0, ",");
      var commaPosition = 7;

      for (var i = 0; i < commasNeeded - 1; i++) {
        digitArray.splice(commaPosition, 0, ",");
        commaPosition += 4;
      }
    }
  }
  if (String(number).length % 3 === 0) {
    digitArray.reverse().shift();
    return digitArray.join("");
  } else {
    return digitArray.reverse().join("");
  }
};


console.log(commas(100));
console.log(commas(1000));
console.log(commas(12345678956));
console.log(commas(123456789565));


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// It was tougher than I was anticipating because JavaScript doesn't have as many built-in methods but our logic was basically the same as the logic from our Ruby challenge but slightly different because working with a partner yielded slightly different logic. 

// What did you learn about iterating over arrays in JavaScript?
// Not too much in this challenge, as we used the built-in .splice method a few times which worked like a charm! We used a for loop only once and it was pretty straight forward.

// What was different about solving this problem in JavaScript?
// At times, my pair and I got our syntaxes mixed up and had to do remember to use our brackets and semi-colons! 

// What built-in methods did you find to incorporate in your refactored solution?
// I didn't do much refactoring between my intitial solution and my refactored solution. We used .splice, .shift, .reverse, and Math.floor.

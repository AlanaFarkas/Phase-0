// Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.

// Pseudocode
// Input: Integer
// Output: String
// Steps: IF integer is 3 digits or less, return number
// ELSE IF integer is greater than 3 digits, transform integer into an array. LOOP through array and add a comma after every third digit

// commas_needed = number.length / 3 IF number.length % 3 != 0
// commas_needed 

function commas(number) {
  var commasNeeded = Math.floor(String(number).length/3);
  var digitArray = String(number).split("").reverse();
  if (String(number).length <= 3) {
    return number;
  } else {
    if (String(number).length == 4) {
      digitArray.splice(3, 0, ",");;
    } else {
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


// Refactored Solution




// Your Own Tests (OPTIONAL)

console.log(commas(100));
console.log(commas(1000));
console.log(commas(12345678956));
console.log(commas(123456789565));


// Reflection


// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection
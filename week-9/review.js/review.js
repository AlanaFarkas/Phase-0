// # Pseudocode
//Input: array
//Output: median number in array
//Steps: 
// DEFINE array function that accepts an array
// Sort the array
// DEFINE var half 
// IF the number of elements in the array is an odd number, return middle element
// IF the number of elements in the array is an even number, return the average of the two middle numbers


// # Initial Solution

function median(array) {
  
  array = array.sort();  
  var half = Math.floor((array.length)/2)
  
  if (array.length % 2 !== 0) {    
   var median = array[half];
  } 
  else {   
    var median = (array[half] + array[(half-1)])/2;  
  }
  return median;
}



// # Refactored Solution


// DRIVER CODE
console.log(median([100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]));

// REFLECTION:

// What concepts did you solidify in working on this challenge?
// It's always helpful writing javaScript after so much Ruby just to keep my brain sharp on the differences in syntax

// What was the most difficult part of this challenge? Did you solve the problem in a new way this time?
// If the number of elements in the array is even, it took me a few tries to get the syntax written properly.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudoode was not very different from my ruby version.
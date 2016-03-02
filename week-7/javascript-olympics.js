// JavaScript Olympics
// I paired with Afaan Naqvi on this challenge.
// This challenge took me 2 hours.


// Bulk Up

// Pseudocode
// Function will take in an array, output a string
// The string is array[0] + " won the " + array[1]

// iterate over the athlete_array using "for i in athlete_array"
// At each step print out "athlete_array[i][0] + " won the " athlete[i][1]""

function win(athlete_array){
    for (i in athlete_array){
        console.log(athlete_array[i][0] + " won the " + athlete_array[i][1]);
    };
};

// DRIVER CODE

var a = [["Afaan", "JavaScript Olympics"], ["Alana", "Ruby Olympics"], ["Andrew", "DBC Olympics"]]

win(a)


// Jumble your words

// Pseudocode
// input: string
// output: string
// turn string into an array using split method
// reverse array
// join array

function reverse(string) {
 var word = string.split("").reverse().join('');
 console.log(word);
};

// DRIVER CODE
reverse("Olympics")


// 2,4,6,8

// Pseudocode
// input the array
// calculate the length of the array
// for i in length
//     if i is even, push the element at index i
// return the even array

function evens(number_array){
    var evens_array = [];
    var length = number_array.length;
    for (i = 0; i < length; i++){
        if (i % 2 == 0) {
            evens_array.push(number_array[i]);
        };
    };
    return evens_array;
};

test_array = [1,2,3,4,5,6,7,8,9]
console.log(evens(test_array));

// "We built this city"
function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

// DRIVER CODE FOR WE BUILT THIS CITY
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// Creating for loops in JavaScript is a lot easier for me now -- we tried to use a built-in method #.indexOf for the 2, 4, 6, 8 challenge but kept getting thwarted! So we just switched to the more cumbersome for loop but it was good practice to write it all out.

// What are constructor functions?
// Constructor functions in JavaScript remind me a lot of Ruby classes. Constructors in JavaScript create objects that have certain attributes 'baked in' to every object created.

// How are constructors different from Ruby classes (in your research)?
// So far the big difference I can see is in creating instance variables and setter/getter methods. In ruby you'd prefix an index variable with @ but in JavaScript you prefix it with "this."[variable name]. 






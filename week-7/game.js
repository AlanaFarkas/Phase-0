
// Mission Description:
// Overall mission: Be in possession of the remote control
// Goals: Answer 5 math problems correctly in order to get the remote control. Player is asked math questions. If player earns 5 knowledge points, player wins the game and gets the remote.
// Characters: Player
// Objects: Player, remote control
// Functions: Ask question, check number of knowledge points

// Pseudocode

// Declare my player and remote control objects with their starting properties id, number of knowledge points, and whether or not the player is in possession of the remote control.
// Create question function to generate a new equation with random numbers and operators to solve each time the function is called.
// Create array with operator elements +, -, and *. Not using division.
// Declare variable for first random number
// Declare variable for second random number
// Declare variable for the randomly selected operator from operator array
// Declare and return string variable to output equation to solve
// Award player a knowledge point for each question asked

// Create check function to track number of knowledge points earned, and whether or not player was in possession of the remote control.
// IF player earns 5 knowledge points, the player wins and possession property = true. Remote control property possession = true
// ouput string declaring player the winner

// INITIAL SOLUTION:

var player = {
  id: "player",
  knowledgePoints: 0,
  inPossession: false,
}

var remoteControl = {
  id: "remote control",
  inPossession: false,
}


function question() {
  player.knowledgePoints += 1;
  var operators = ["+", "-", "*"];
  var number1 = Math.floor(Math.random()*30);
  var number2 = Math.floor(Math.random()*30);
  var randomOperator = Math.floor(Math.random() * operators.length);
  var randomOperator = operators[randomOperator];
  var equation = (number1 + randomOperator + number2)
  
  var questionString = ("Solve the following equation to earn knowledge points: " + equation); 
  
  return(questionString); 

};

function check() {
  if (player.knowledgePoints === 5) {
    remoteControl.inPossession = true;
    player.inPossession = true;
    return("You win the remote control!");
  }
}

// Driver code:
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log((check()));
console.log(player);
console.log(remoteControl);

// REFACTORED SOLUTION:

var player = {
  id: "player",
  knowledgePoints: 0,
  inPossession: false,
}

var remoteControl = {
  id: "remote control",
  inPossession: false,
}


function question() {
  player.knowledgePoints += 1;
  var operators = ["+", "-", "*"];
  var number1 = Math.floor(Math.random()*30);
  var number2 = Math.floor(Math.random()*30);
  var randomOperator = Math.floor(Math.random() * operators.length);
  var randomOperator = operators[randomOperator];
  var equation = (number1 + randomOperator + number2)
  
  var questionString = ("Solve the following equation to earn knowledge points: " + equation); 
  
  return(questionString); 

};

function check() {
  if (player.knowledgePoints === 5) {
    remoteControl.inPossession = true;
    player.inPossession = true;
    return("You win the remote control!");
  }
}

// Driver code:
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log(player);
console.log(remoteControl);
console.log((question()));
console.log((check()));
console.log(player);
console.log(remoteControl);


// Reflection:
// What was the most difficult part of this challenge?
// The most difficult part was admitting defeat! The functionality I had intended to create for this game would have checked the see if the player's solution to the equation was correct or not, and to only award a knowledge point if the player was correct. I believe the game's current state satisfies the requirements of the assignment but this is not a very fun game as it just asks questions. For now we'll just assume whoever is asking the question of the player is verifying the answer...

// What did you learn about creating objects and functions that interact with one another?
// Creating objects and functions to interact with each other wasn't too difficult after spending the past week learning about that interaction but this challenge and the research I did to prepare gave me some "a-ha" moments seeing how games come together, even at the most basic level. 

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// It wasn't a brand new method I used, but I used the Math.random to output random elements from an array of strings instead of just generating random numbers.

// How can you access and manipulate properties of objects?
// You can access and manipulate properties in objects using the dot method, or the bracket method.


  


// var player = {
//   name: "player",
//   knowledgePoints: 0,
//   inPossession: false,
// }

// var remoteControl = {
//   name: "remote control",
//   inPossession: false,
// }


// function question() {
//   player.knowledgePoints += 1;
//   var operators = ["+", "-", "*"];
//   var number1 = Math.floor(Math.random()*30);
//   var number2 = Math.floor(Math.random()*30);
//   var randomOperator = Math.floor(Math.random() * operators.length);
//   var randomOperator = operators[randomOperator];
//   var equationString = (number1 + randomOperator + number2);  

//       if (randomOperator === "+") {
//        var equation = (number1 + number2);
//       }
//       else if (randomOperator === "-") {
//         var equation = (number1 - number2);
//       }
//       else if (randomOperator === "*") {
//         var equation = (number1 * number2);
//       }
  
//   var questionString = ("Solve the following equation to earn knowledge points: " + equationString);
//   var playerAnswer = prompt(equationString);
//     if (playerAnswer === equation) {
//     player.knowledgePoints += 1;
//   }
//   else {
//     player.knowledgePoints -= 1;
//   }
  
//   console.log(questionString); 
//   console.log(equation); 
  

  
// };

// function knowledgePoints() {  
//   if (player.knowledgePoints === 5) {
//     player.inPossession = true;
//     remoteControl.inPossession = true;    
//     console.log("You win possession of the remote control!");
//   }
// }










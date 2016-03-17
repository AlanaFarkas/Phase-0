// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  bodyElement = $('body')
  h1Element = $('h1')
  headElement = $('head')


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

// $("h1:contains("Hello")" ).css({"color": "blue", "border": "1px dashed black", "visibility": "visible"});
$( "h1:contains('Hello.')" ).css({"color": "red", "border": "3px solid blue", "visibility": "visible"})

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$( "h1:contains('My')" ).html("Rock Doves");


//RELEASE 5: Experiment on your own

  $('img').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://naturemappingfoundation.org/natmap/photos/birds/rock_dove_4064np.jpg')
  }).on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })



$('div img').click(function () {
   $(this).css({border: '0 solid #f37736 '}).animate({
       borderWidth: 4
   }, 500);

   });


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// What is jQuery?
// JQuery is a javaScript library of code.

// What does jQuery do for you?
// JQuery that enables you to build functionality with less code.

// What did you learn about the DOM while working on this challenge?
// I learned that accessing the Document Object Model (DOM) using Chrome Dev Tools is sort of like 
// a map of all the HTML elements in our program, and what scripts are linked to the HTML file.



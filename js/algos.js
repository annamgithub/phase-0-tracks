// Task: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// Release 0 Pseudocode:
// Create a function to determine the length of each phrase in the array.
// Check if the first phrase is longer than the other phrases.
// If it is not longer, move on to the next phrase in the array and check to see whether it is longer than the other phrases in the array.
// Continue until the longest phrase is identified, then print it.

function phrases(p) {
   var longest_phrase = p[0];
    for (var i = 0; i< p.length; i++) {
       if (p[i].length > longest_phrase.length) {
         longest_phrase = p[i];
       }
     }
     return longest_phrase;
 }

//Driver Code
phrases(["Oh, behave!", "Yeah, baby, yeah!", "Get in my belly!", "I also like to live dangerously"])
phrases(["long phrase","longest phrase","longer phrase", "this is the longest phrase ever"])



//Release 1 Pseudocode
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

function favorite_food(item1, item2) {
   for (var k1 in item1) {
     for (var k2 in item2) {
       if (k1 === k2) {
         if (item1[k1] === item2[k2]) {
           return true;
         } 
       }
     }
   }
   return false;
 }
 
//Driver Code
favorite_food({name: "Anna", food: "apple pie"}, {name: "Miranda", food: "apple pie"}); 
favorite_food({name: "Christa", food: "apple pie"}, {name: "Miranda", food: "Sichuan chicken"}); 










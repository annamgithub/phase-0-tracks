// Task: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// Pseudocode:
// Create a function to determine the length of each phrase in the array.
// Check if the first phrase is longer than the other phrases.
// If it is not longer, move on to the next phrase in the array and check to see whether it is longer than the other phrases in the array.
// Continue until the longest phrase is identified, then print it.


function phrases([p1, p2, p3]) {
  if (p1.length > p2.length && p3.length) {
    console.log(p1)
  }

  else if (p2.length > p1.length && p3.length) {
    console.log(p2)
  }

  else if (p3.length > p1.length && p2.length) {
    console.log(p3)
  }
}


//Driver Code
phrases(["Oh, behave!", "Yeah, baby, yeah!", "Get in my belly!", "I also like to live dangerously"])
phrases(["long phrase","longest phrase","longer phrase", "this is the longest phrase ever"])



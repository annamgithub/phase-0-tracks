// Pseudocode
// Goal: Take a string as a parameter and reverse the string.

// 1. Reposition the first letter of the word to the last position.
// 2. Now look at the new first letter of the word. Take that letter and reposition it to the second-last position of the word.
// 3. Continue the process until all the letters have been dealt with.


function rev(word) {
  var alt_word = ""
  for (var x = word.length - 1; x >= 0; x--) {
    alt_word += word[x]
  }
  if (word == alt_word) {
    return
  }
  
  return alt_word
}


//Driver Code

stored_as_variable = rev("hello")
if (1 == 1) {
  console.log(stored_as_variable)
}

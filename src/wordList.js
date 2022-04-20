import React from 'react'

const wordList =
[
    "mille",
    "bille",
    "dille",
    "dmill",
    "pisss"
];

// correct word person needs to guess
const correctWord = getCorrectWord();

// function to randomize the word
function getCorrectWord() {
  return wordList[4]
}

export {
    wordList,
    correctWord
}
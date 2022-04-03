import React from 'react'

const wordList =
[
    "mille",
    "bille",
    "dille",
    "dmill"
];

// correct word person needs to guess
const correctWord = randomizeWord();

// function to randomize the word
function randomizeWord() {
  return wordList[Math.floor(Math.random() * wordList.length)]
}

export {
    wordList,
    correctWord
}
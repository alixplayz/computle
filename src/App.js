import React from 'react'
import "./App.css"
import Board from './board';
import Keyboard from './keyboard';

let currentGuess;
let correctWord;

// get txt wordList in variable


function App() {

  return (
    <div>
      <h1 className='title'>Computle</h1>
      <Board />
      <Keyboard />
    </div>
  );
}

export default App;
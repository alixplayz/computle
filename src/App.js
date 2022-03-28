import React from 'react'
import "./App.css"
import Board from './board';
import Keyboard from './keyboard';
import {correctWord} from './wordList'

function App() {

  console.log("DEBUG correctWord: " + correctWord)

  return (
    <div>
      <h1 className='title'>Computle</h1>
      <Board />
      <Keyboard />
    </div>
  );
}

export default App;
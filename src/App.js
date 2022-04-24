import { render } from '@testing-library/react';
import React, { useState } from 'react'
import "./App.css"
import Board from './board';
import Keyboard from './keyboard';
import {correctWord} from './wordList'

// estetsetsetset
// dahawdwbauywduyba
// deez nuts

function App() {

  // print correct word
  console.log("DEBUG correctWord: " + correctWord)

  // useState to check if the user has passed the menu screen
  const [menuPassed, setPassed] = useState(false)

  // checks if user is on menu screen or not, and render accordingly
  const RenderCheck = () => {
    if (menuPassed === false) {
      return (
        <div>
            <div className='menu-box'>
              <h3 className='menu-text'>This is like Wordle.</h3>
              <h3 className='menu-text'>But all the words are in some way or another related to computers and technology.</h3>
              <button className='menu-button' onClick={() => {setPassed(true)}}>Play</button>
            </div>
        </div>
      )
    } else {
      return (
        <div>
          <Board />
          <Keyboard />
        </div>
      );
    }
  }

  return (
    <div>
      <h1 className='title'>Computle</h1>
      <RenderCheck />
    </div>
  );
}

export default App;

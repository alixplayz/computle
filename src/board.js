import { hasSelectionSupport, wait } from "@testing-library/user-event/dist/utils";
import React, {useState, useEffect} from "react";
import {correctWord, wordList} from "./wordList";

function validInput(input) {
    // Checks if input is a valid character
    const letters = "qwertyuiopasdfghjklzxcvbnm"
    if (letters.indexOf(input.toLowerCase()) !== -1) {
        return true
    }

    return false
}


function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

function Board() {

    // guess states
    const [currentGuess, setCurrent] = useState([])
    const [pastGuesses, setPast] = useState([])

    useEffect(() => {
        // We only want to add one event listener so we wrap it in a useEffect hook
        window.addEventListener('keydown', function(event) {

            // when person locks in guess
            if (event.keyCode === 13 && currentGuess.length % 5 === 0 && currentGuess.length !== 0) {

                // checks if the word is an accepted word from the wordList
                if (wordList.includes(currentGuess.join(''))) {

                    // checks if the person has won
                    if (currentGuess.join('') === correctWord) {
                        for (let i = 0; i != 69; i++) {
                            console.log("YOU WON!!!!!!!!!!")
                        }
                    } else {
                        console.log("DEBUG: person locked in guess")
                        setPast(oldArray => [...oldArray, currentGuess.join('')]);
                        setCurrent([])
                    }

                } else {
                    setCurrent([])
                    console.log("DEBUG not accepted word")
                }

                return
            }

            // when person just types in a letter
            if (validInput(event.key) && currentGuess.length < 5) {
                setCurrent(oldArray => [...oldArray, event.key.toLowerCase()]);

                return
            }

            // if checks fail, just delete there guess
            setCurrent([])

        }, {once : true});
    }, [currentGuess])

    console.log("DEBUG current guess array: " + currentGuess)
    console.log("DEBUG pastguess array: " + pastGuesses)

    function RenderCurrentRow1(props) {
        return <h4 className="letter">{currentGuess[props.whichRender]}</h4>
    }

    function RenderPastRow1(props) {
        var char = pastGuesses[0] + ""
        
        return <h4 className="letter">{(pastGuesses[0] + "").charAt(props.whichRender)}</h4>
    }

    function RenderEitherRow1(props) {
        const whichRender = props.whichRender
        if (pastGuesses.length === 0) {
            return <RenderCurrentRow1 whichRender={whichRender}/>
        } else {
            return <RenderPastRow1 whichRender={whichRender} />
        }
    }


    function RenderCurrentRow2(props) {
        return <h4 className="letter">{currentGuess[props.whichRender]}</h4>
    }

    function RenderPastRow2(props) {
        var char = pastGuesses[0] + ""
        
        return <h4 className="letter">{(pastGuesses[1] + "").charAt(props.whichRender)}</h4>
    }

    function RenderEitherRow2(props) {
        const whichRender = props.whichRender
        if (pastGuesses.length === 1) {
            return <RenderCurrentRow2 whichRender={whichRender}/>
        } else if (pastGuesses.length >= 2) {
            return <RenderPastRow2 whichRender={whichRender} />
        } else {
            return <h4></h4>
        }
    }


    function RenderCurrentRow3(props) {
        return <h4 className="letter">{currentGuess[props.whichRender]}</h4>
    }

    function RenderPastRow3(props) {
        var char = pastGuesses[0] + ""
        
        return <h4 className="letter">{(pastGuesses[2] + "").charAt(props.whichRender)}</h4>
    }

    function RenderEitherRow3(props) {
        const whichRender = props.whichRender
        if (pastGuesses.length === 2) {
            return <RenderCurrentRow3 whichRender={whichRender}/>
        } else if (pastGuesses.length >= 3) {
            return <RenderPastRow3 whichRender={whichRender} />
        } else {
            return <h4></h4>
        }
    }


    function RenderCurrentRow4(props) {
        return <h4 className="letter">{currentGuess[props.whichRender]}</h4>
    }

    function RenderPastRow4(props) {
        var char = pastGuesses[0] + ""
        
        return <h4 className="letter">{(pastGuesses[3] + "").charAt(props.whichRender)}</h4>
    }

    function RenderEitherRow4(props) {
        const whichRender = props.whichRender
        if (pastGuesses.length === 3) {
            return <RenderCurrentRow4 whichRender={whichRender}/>
        } else if (pastGuesses.length >= 4) {
            return <RenderPastRow4 whichRender={whichRender} />
        } else {
            return <h4></h4>
        }
    }


    function RenderCurrentRow5(props) {
        return <h4 className="letter">{currentGuess[props.whichRender]}</h4>
    }

    function RenderPastRow5(props) {
        var char = pastGuesses[0] + ""
        
        return <h4 className="letter">{(pastGuesses[4] + "").charAt(props.whichRender)}</h4>
    }

    function RenderEitherRow5(props) {
        const whichRender = props.whichRender
        if (pastGuesses.length === 4) {
            return <RenderCurrentRow5 whichRender={whichRender}/>
        } else if (pastGuesses.length >= 5) {
            return <RenderPastRow5 whichRender={whichRender} />
        } else {
            return <h4></h4>
        }
    }


    function RenderCurrentRow6(props) {
        return <h4 className="letter">{currentGuess[props.whichRender]}</h4>
    }

    function RenderPastRow6(props) {
        var char = pastGuesses[0] + ""
        
        return <h4 className="letter">{(pastGuesses[5] + "").charAt(props.whichRender)}</h4>
    }

    function RenderEitherRow6(props) {
        const whichRender = props.whichRender
        if (pastGuesses.length === 5) {
            return <RenderCurrentRow6 whichRender={whichRender}/>
        } else if (pastGuesses.length >= 6) {
            return <RenderPastRow6 whichRender={whichRender} />
        } else {
            return <h4></h4>
        }
    }
    
    return(
        <div className="board">
            <script src="board.js"></script>
            <div className="row">
                {
                    // TODO: Use array.map instead of this mess
                }
                <div className="box">
                    <RenderEitherRow1 whichRender={0} />
                </div>
                <div className="box">
                    <RenderEitherRow1 whichRender={1} />
                </div>
                <div className="box">
                    <RenderEitherRow1 whichRender={2} />
                </div>
                <div className="box">
                    <RenderEitherRow1 whichRender={3} />
                </div>
                <div className="box">
                    <RenderEitherRow1 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box">
                    <RenderEitherRow2 whichRender={0} />
                </div>
                <div className="box">
                    <RenderEitherRow2 whichRender={1} />
                </div>
                <div className="box">
                    <RenderEitherRow2 whichRender={2} />
                </div>
                <div className="box">
                    <RenderEitherRow2 whichRender={3} />
                </div>
                <div className="box">
                    <RenderEitherRow2 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box">
                    <RenderEitherRow3 whichRender={0} />
                </div>
                <div className="box">
                    <RenderEitherRow3 whichRender={1} />
                </div>
                <div className="box">
                    <RenderEitherRow3 whichRender={2} />
                </div>
                <div className="box">
                    <RenderEitherRow3 whichRender={3} />
                </div>
                <div className="box">
                    <RenderEitherRow3 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box">
                    <RenderEitherRow4 whichRender={0} />
                </div>
                <div className="box">
                    <RenderEitherRow4 whichRender={1} />
                </div>
                <div className="box">
                    <RenderEitherRow4 whichRender={2} />
                </div>
                <div className="box">
                    <RenderEitherRow4 whichRender={3} />
                </div>
                <div className="box">
                    <RenderEitherRow4 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box">
                    <RenderEitherRow5 whichRender={0} />
                </div>
                <div className="box">
                    <RenderEitherRow5 whichRender={1} />
                </div>
                <div className="box">
                    <RenderEitherRow5 whichRender={2} />
                </div>
                <div className="box">
                    <RenderEitherRow5 whichRender={3} />
                </div>
                <div className="box">
                    <RenderEitherRow5 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box">
                    <RenderEitherRow6 whichRender={0} />
                </div>
                <div className="box">
                    <RenderEitherRow6 whichRender={1} />
                </div>
                <div className="box">
                    <RenderEitherRow6 whichRender={2} />
                </div>
                <div className="box">
                    <RenderEitherRow6 whichRender={3} />
                </div>
                <div className="box">
                    <RenderEitherRow6 whichRender={4} />
                </div>
            </div>
        </div>
    );
}

export default Board;
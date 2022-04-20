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

function Board() {

    // guess states
    const [currentGuess, setCurrent] = useState([])
    const [pastGuesses, setPast] = useState([])

    // other states
    const [effectHack, setHack] = useState(0)
    const [Won, setWon] = useState(() => {
        return (
            null
        )
    })

    // function to render the "won" screen
    const WonRender = () => {
        return Won
    }
    
    // do the box background coloring
    const boxColorFunc = () =>  {
        if (pastGuesses.length === 0) {
            // letter is correct and correct place - green
            for (let i = 0; i !== 5;) {
                if (currentGuess[i] === correctWord.charAt(i)) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "green"}
                        return newEvent
                    })
                }
                i++
            }
            // letter is correct but NOT correct place - yellow
            for (let i = 0; i !== 5;) {
                if (correctWord.includes(currentGuess[i]) && !(currentGuess[i] === correctWord.charAt(i))) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "yellow"}
                        return newEvent
                    })
                }
                i++
            }
        }
        if (pastGuesses.length === 1) {
            for (let i = 5; i !== 10;) {
                if (currentGuess[i - 5] === correctWord.charAt(i - 5)) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "green"}
                        return newEvent
                    })
                }
                i++
            }
            for (let i = 5; i !== 10;) {
                if (correctWord.includes(currentGuess[i - 5]) && !(currentGuess[i - 5] === correctWord.charAt(i - 5))) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "yellow"}
                        return newEvent
                    })
                }
                i++
            }
        }
        if (pastGuesses.length === 2) {
            for (let i = 10; i !== 15;) {
                if (currentGuess[i - 10] === correctWord.charAt(i - 10)) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "green"}
                        return newEvent
                    })
                }
                i++
            }
            for (let i = 10; i !== 15;) {
                if (correctWord.includes(currentGuess[i-10]) && !(currentGuess[i-10] === correctWord.charAt(i-10))) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "yellow"}
                        return newEvent
                    })
                }
                i++
            }
        }
        if (pastGuesses.length === 3) {
            for (let i = 15; i !== 20;) {
                if (currentGuess[i - 15] === correctWord.charAt(i - 15)) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "green"}
                        return newEvent
                    })
                }
                i++
            }
            for (let i = 15; i !== 20;) {
                if (correctWord.includes(currentGuess[i-15]) && !(currentGuess[i-15] === correctWord.charAt(i-15))) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "yellow"}
                        return newEvent
                    })
                }
                i++
            }
        }
        if (pastGuesses.length === 4) {
            for (let i = 20; i !== 25;) {
                if (currentGuess[i - 20] === correctWord.charAt(i - 20)) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "green"}
                        return newEvent
                    })
                }
                i++
            }
            for (let i = 20; i !== 25;) {
                if (correctWord.includes(currentGuess[i-20]) && !(currentGuess[i-20] === correctWord.charAt(i-20))) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "yellow"}
                        return newEvent
                    })
                }
                i++
            }
        }
        if (pastGuesses.length === 5) {
            for (let i = 25; i !== 30;) {
                if (currentGuess[i - 25] === correctWord.charAt(i - 25)) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "green"}
                        return newEvent
                    })
                }
                i++
            }
            for (let i = 25; i !== 30;) {
                if (correctWord.includes(currentGuess[i-25]) && !(currentGuess[i-25] === correctWord.charAt(i-25))) {
                    setBoxColors((event) => {
                        let newEvent = event
                        newEvent[i] = {backgroundColor: "yellow"}
                        return newEvent
                    })
                }
                i++
            }
        }
        setPast(oldArray => [...oldArray, currentGuess.join('')]);
        setCurrent([])
    }

    useEffect(() => {
        // We only want to add one event listener so we wrap it in a useEffect hook
        window.addEventListener('keydown', function(event) {
            // if the game is over
            if (pastGuesses.length >= 6) {
                return
            }

            // when person locks in guess
            if (event.keyCode === 13 && currentGuess.length % 5 === 0 && currentGuess.length !== 0) {

                // checks if the word is an accepted word from the wordList
                const enterFunc = () => {
                    if (wordList.includes(currentGuess.join(''))) {

                    // checks if the person has won
                    if (currentGuess.join('') === correctWord) {
                        boxColorFunc()
                        for (let i = 0; i !== 69; i++) {
                            console.log("YOU WON!!!!!!!!!!")
                            setWon(() => {
                                return (
                                    <div style={{position: "absolute"}}>
                                        <h1>you won lo!L</h1>
                                    </div>
                                )
                            })
                        }
                    } else {
                        console.log("DEBUG: person locked in guess")

                        boxColorFunc()
                        setHack(effectHack + 1)
                }

                } else {
                    setCurrent([])
                    setHack(effectHack + 1)
                    console.log("DEBUG not accepted word")
                }
            }
            enterFunc()

                return
            }

            // when person just types in a letter
            if (validInput(event.key) && currentGuess.length < 5) {
                setCurrent(oldArray => [...oldArray, event.key.toLowerCase()]);
                setHack(effectHack + 1)

                return
            }

            // if checks fail, just delete their guess
            setCurrent([])
            setHack(effectHack + 1)

        }, {once : true});
    }, [effectHack])

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


    const [boxColors, setBoxColors] = useState([
        // row 1
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        // row 2
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        // row 3
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        // row 4
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        // row 5
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        },
        {
            backgroundColor: "white"
        }
    ])

    
    return(
        <div className="board">
            <script src="board.js"></script>
            <div className="row">
                {
                    // TODO: Use array.map instead of this mess
                }
                <div className="box" style={boxColors[0]}>
                    <RenderEitherRow1 whichRender={0}/>
                </div>
                <div className="box" style={boxColors[1]}>
                    <RenderEitherRow1 whichRender={1} />
                </div>
                <div className="box" style={boxColors[2]}>
                    <RenderEitherRow1 whichRender={2} />
                </div>
                <div className="box" style={boxColors[3]}>
                    <RenderEitherRow1 whichRender={3} />
                </div>
                <div className="box" style={boxColors[4]}>
                    <RenderEitherRow1 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box" style={boxColors[5]}>
                    <RenderEitherRow2 whichRender={0} />
                </div>
                <div className="box" style={boxColors[6]}>
                    <RenderEitherRow2 whichRender={1} />
                </div>
                <div className="box" style={boxColors[7]}>
                    <RenderEitherRow2 whichRender={2} />
                </div>
                <div className="box" style={boxColors[8]}>
                    <RenderEitherRow2 whichRender={3} />
                </div>
                <div className="box" style={boxColors[9]}>
                    <RenderEitherRow2 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box" style={boxColors[10]}>
                    <RenderEitherRow3 whichRender={0} />
                </div>
                <div className="box" style={boxColors[11]}>
                    <RenderEitherRow3 whichRender={1} />
                </div>
                <div className="box" style={boxColors[12]}>
                    <RenderEitherRow3 whichRender={2} />
                </div>
                <div className="box" style={boxColors[13]}>
                    <RenderEitherRow3 whichRender={3} />
                </div>
                <div className="box" style={boxColors[14]}>
                    <RenderEitherRow3 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box" style={boxColors[15]}>
                    <RenderEitherRow4 whichRender={0} />
                </div>
                <div className="box" style={boxColors[16]}>
                    <RenderEitherRow4 whichRender={1} />
                </div>
                <div className="box" style={boxColors[17]}>
                    <RenderEitherRow4 whichRender={2} />
                </div>
                <div className="box" style={boxColors[18]}>
                    <RenderEitherRow4 whichRender={3} />
                </div>
                <div className="box" style={boxColors[19]}>
                    <RenderEitherRow4 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box" style={boxColors[20]}>
                    <RenderEitherRow5 whichRender={0} />
                </div>
                <div className="box" style={boxColors[21]}>
                    <RenderEitherRow5 whichRender={1} />
                </div>
                <div className="box" style={boxColors[22]}>
                    <RenderEitherRow5 whichRender={2} />
                </div>
                <div className="box" style={boxColors[23]}>
                    <RenderEitherRow5 whichRender={3} />
                </div>
                <div className="box" style={boxColors[24]}>
                    <RenderEitherRow5 whichRender={4} />
                </div>
            </div>
            <div className="row">
                <div className="box" style={boxColors[25]}>
                    <RenderEitherRow6 whichRender={0} />
                </div>
                <div className="box" style={boxColors[26]}>
                    <RenderEitherRow6 whichRender={1} />
                </div>
                <div className="box" style={boxColors[27]}>
                    <RenderEitherRow6 whichRender={2} />
                </div>
                <div className="box" style={boxColors[28]}>
                    <RenderEitherRow6 whichRender={3} />
                </div>
                <div className="box" style={boxColors[29]}>
                    <RenderEitherRow6 whichRender={4} />
                </div>
            </div>
            <WonRender />
        </div>
    );
}

export default Board;
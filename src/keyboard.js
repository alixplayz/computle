import React, {useState} from 'react';
import './board.js';

function Keyboard() {

    const [color, setColor] = useState({
        q: "default-color",
        w: "default-color",
        e: "default-color",
        r: "default-color",
        t: "default-color",
        y: "default-color",
        u: "default-color",
        i: "default-color",
        o: "default-color",
        p: "default-color",
        a: "default-color",
        s: "default-color",
        d: "default-color",
        f: "default-color",
        g: "default-color",
        h: "default-color",
        j: "default-color",
        k: "default-color",
        l: "default-color",
        z: "default-color",
        x: "default-color",
        c: "default-color",
        v: "default-color",
        b: "default-color",
        n: "default-color",
        m: "default-color"
    })

    {/* 
    HOW TO SET THE DIFFERENT ARRAY KEYBOARD LETTERS
onClick={() => {setColor(i => {return { ...i, q: "green-color"}})}} */}

    return (
        <div>
            <div className='keyboard'>
                <button className={color.q}>q</button>
                <button className={color.w}>w</button>
                <button className={color.e}>e</button>
                <button className={color.r}>r</button>
                <button className={color.t}>t</button>
                <button className={color.y}>y</button>
                <button className={color.u}>u</button>
                <button className={color.i}>i</button>
                <button className={color.o}>o</button>
                <button className={color.p}>p</button>
            </div>
            <div className='keyboard'>
                <button className={color.a}>a</button>
                <button className={color.s}>s</button>
                <button className={color.d}>d</button>
                <button className={color.f}>f</button>
                <button className={color.g}>g</button>
                <button className={color.h}>h</button>
                <button className={color.j}>j</button>
                <button className={color.k}>k</button>
                <button className={color.l}>l</button>
            </div>
            <div className='keyboard'>
                <button className="del-button">del</button>
                <button className={color.z}>z</button>
                <button className={color.x}>x</button>
                <button className={color.c}>c</button>
                <button className={color.v}>v</button>
                <button className={color.b}>b</button>
                <button className={color.n}>n</button>
                <button className={color.m}>m</button>
                <button className="enter-button">enter</button>
            </div>
        </div>
    );
}

export default Keyboard;
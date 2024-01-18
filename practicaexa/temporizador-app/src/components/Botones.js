import React, { useState } from "react";
import "../styles/Botones.css";  

export default function Botones() {
  const [timer, setTimer] = useState(0);

  const startTimer = () => {
    window.myTimer = setInterval(() => {
      setTimer((timer) => timer + 1);
    }, 1000);
  };

  const stopTimer = () => {
    clearInterval(window.myTimer);
  };

  const resetTimer = () => {
    clearInterval(window.myTimer);
    setTimer(0);
  };

  return (
    <div className="container">
      <h1>TIEMPO</h1>
      <span>{Math.trunc(timer / 60)} mins </span>
      <span>{timer % 60} secs</span>
      <div>
        <button onClick={startTimer}>INICIAR</button>
        <button onClick={stopTimer}>PARAR</button>
        <button onClick={resetTimer}>RESTABLECER</button>
      </div>
    </div>
  );
}
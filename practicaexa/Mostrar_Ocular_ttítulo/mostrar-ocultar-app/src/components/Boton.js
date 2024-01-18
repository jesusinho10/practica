import React, { useState } from "react";
import "../styles/Boton.css";

export default function App() {


  const [show, setShow] = useState(true);

  return (
    <div className="container">
      <button onClick={() => setShow((show) => !show)}> mostrar / oculatar</button>
      {show ? <h1>texto q se borra con ocultad </h1> : null}
    </div>
  );
}

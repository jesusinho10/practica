import React, { useState } from "react";
import ProgressBar from "./ProgressBar";

import '../styles/Todolist.css';

const Todolist = () => {
  const [val, setVal] = useState(10);
  const setValuer = (e) => setVal(Number(e.target.value));

  return (
    <>
      <div className="App">
        <ProgressBar width={val} />
        <form>
          <label htmlFor="html">Porcentaje de entrada:</label>
          <input type="number" onChange={setValuer} />
        </form>
      </div>
    </>
  );
};

export default Todolist;

import React from "react";
import '../styles/PrpgressBar.css';

const ProgressBar = ({ width }) => {
  return (
    <div className="container">
      {width >= 0 && width <= 100 ? (
        <div className="innerContainer" style={{ width: `${width}%` }}>
          {width}%
        </div>
      ) : (
        alert("entre 0 y 100.")
      )}
    </div>
  );
};

export default ProgressBar;

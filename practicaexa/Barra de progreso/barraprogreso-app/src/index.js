import React from "react";
import ReactDOM from "react-dom";
import App from "./App";
import { StrictMode } from "react";

const rootElement = document.getElementById("root");
ReactDOM.render(
  <StrictMode>
    <App />
  </StrictMode>,
  rootElement
);
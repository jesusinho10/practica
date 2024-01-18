import './App.css';
import { StrictMode } from "react";
import ReactDOM from "react-dom";
import App from "./components/Boton.js"; 
const rootElement = document.getElementById("root");
ReactDOM.render(
  <StrictMode>
    <App />
  </StrictMode>,
  rootElement
);
export default App;

import React, { useState } from "react";
import Todolist from "./components/Todolist";
import "./styles/Todolist.css";

function App() {
  return (
    <div className="App">
      <h1>Todo List</h1>
      <Todolist />
    </div>
  );
}

export default App;
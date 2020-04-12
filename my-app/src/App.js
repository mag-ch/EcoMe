import React from 'react';
import './App.css';
import Grid from "react-fast-grid";
import { Example1, Plastic, WaterUsage, Food, Transportation, Results } from './examples';

//npm install --save typescript @types/node @types/react @types/react-dom @types/jest

function nameForm()
{
var input = document.getEormlementById("userInput");
alert(input);
}

function App() {
  return (
    <div style={{ width: "100%", height: "100%", padding: 20, justifyContent: "center" }}>
      <Grid container spacing={4} direction="column" xs={10}>
        <h1 className="App-header"> Welcome to EcoMe </h1> 
        <Grid item>
          <Example1 />
        </Grid>
        <Grid container alignItems="center" spacing={2}>
          <Grid item xs>
            <Plastic />
          </Grid>
          <Grid item xs>
            <WaterUsage />
          </Grid>
          <Grid xs>
            <Food />
          </Grid>
          <Grid xs>
            <Transportation />
          </Grid>
        </Grid>
        <Grid container direction="row" justify="center">
          <Results />
        </Grid>
      </Grid>
    </div>
  );
}



export default App;

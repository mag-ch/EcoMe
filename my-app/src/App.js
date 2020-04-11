import React from 'react';
import './App.css';
import Grid from "react-fast-grid";
import { Example1, Example2, Example3, Example4 } from './examples';


// npm WARN tsutils@3.17.1 requires a peer of typescript@>=2.8.0 || >= 3.2.0-dev || >= 3.3.0-dev || >= 3.4.0-dev || >= 3.5.0-dev || >= 3.6.0-dev || >= 3.6.0-beta || >= 3.7.0-dev || >= 3.7.0-beta but none is installed. You must install peer dependencies yourself.

function App() {
  return (
    <div style={{ width: "100%", height: "100%", padding: 20 }}>
      <Grid container spacing={4} direction="column">
        <Grid item>
          <Example1 />
        </Grid>
        <Grid item>
          <Example2 />
        </Grid>
        <Grid item>
          <Example3 />
        </Grid>
        <Grid item>
          <Example4 />
        </Grid>
      </Grid>
    </div>
  );
}
export default App;

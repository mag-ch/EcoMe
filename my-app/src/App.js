import React, { Component } from 'react';
import './App.css';
import ReactDOM from 'react-dom';
import Grid from "react-fast-grid";
import { Example1, Plastic, WaterUsage, Food, Transportation, Results } from './examples';

//npm install --save typescript @types/node @types/react @types/react-dom @types/jest
//npm i react-charts --save
//npm i react-chartjs-2 --save--dev
//npm i reactstrap

// class FormComponent extends Component {
//   state = {
//     email: '',
//     password: ''
//   };

//   handleOnChange = event => {
//     this.setState({
//         [event.target.name]: event.target.value
//     })
//   }
//   render() {
//     return (
//         <form>
//             <label>Email</label>
//             <input type="text" name="email" onChange={this.handleOnChange} />
//             <label>Password</label>
//             <input type="password" name="password" onChange={this.handleOnChange} />
//         </form>
//     )
//   }
// }


function App() {
  return (
    <div style={{width: "80%",
     height: "100%", 
     padding: 20, 
     margin: "0 auto", 
     backgroundColor: "white",
     color: "black"}} >
      <Grid container spacing={5} direction="column" xs={12}>
        <h1 className="App-header"> Welcome to EcoMe </h1> 
        <Grid item>
          <Example1 />
        </Grid>
        <Grid container direction="row" justify="space-around" item spacing={4} >
          <Grid item xs={3} alignContent="stretch">
            <Plastic />
          </Grid>
          <Grid item xs={3} alignContent="stretch">
            <WaterUsage />
          </Grid>
          <Grid item xs={3} alignContent="stretch" >
            <Food />
          </Grid>
          <Grid item xs={3} alignContent="stretch">
            <Transportation />
          </Grid>
        </Grid>
        <Grid item justify="center">
          <button style={{
            background: "teal", 
            color:"white", 
            width: 200, 
            height: 90, 
            boxShadow: "0 10px 30px #BBB",
            borderRadius: 20,
            fontSize: 20,
            }} 
            onClick={GetResult}>
              Submit
          </button>
        </Grid>
      </Grid>
    </div>
  );
}

function GetResult() {
  return (
  ReactDOM.render(  
      <Grid container item direction="column" justify="flex-start" alignItems="stretch">
        <Results />
      </Grid>,
      document.getElementById('root')
    )
  )
}

export default App;

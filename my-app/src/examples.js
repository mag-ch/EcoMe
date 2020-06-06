import * as React from "react";
import Grid from "react-fast-grid";
import { IoIosCheckmarkCircleOutline, IoMdMenu } from "react-icons/io";
import {Bar} from "react-chartjs-2";
import event from 'react';

const styles = {
  outer: {
    borderRadius: 5,
    boxShadow: "0 10px 30px #BBB",
    padding: 10,
  },
};

var state = {
  firstname: '',
  lastname: ''
}


// user log in credentials
// stors first name, last name, email
export const Example1 = () => (
  <div style={styles.outer}>
   <Grid item xs={12}>
     <h1 >User Info</h1>
   </Grid>
    <Grid container spacing={5} direction="row" justify="flex-start" >
      <Grid item >
        <div>First Name</div>
        <input type="text" name="fname" />
      </Grid>
      <Grid item >
        <div>Last Name</div>
        <input />
      </Grid>
      <Grid item >
        <div>Email Address</div>
        <input />
      </Grid>
      <Grid item >
        <div>Graduating Class</div>
        <input />
      </Grid>
    </Grid>
    <Grid container spacing={5} direction="row" justify="flex-start" >
      <Grid item >
        <div>University</div>
        <input />
      </Grid>
      <Grid item >
        <div>Gender</div>
        <input />
      </Grid>
      <Grid item >
        <div>Building Type</div>
        <input />
      </Grid>
      <Grid item >
        <div>Major</div>
        <input />
      </Grid>
    </Grid>
  </div>
);

// water usage, shower time, dishwashing
export const Plastic = () => (
  <div style={styles.outer}>
    <Grid container justify="center">
      <Grid container direction="column" spacing={1} justify="stretch" alignContent="stretch" >
        <div>
          <h1>Plastic Consumption</h1>
          <h3 >(per week)</h3>
        </div>
        <Grid item>
          <div>Recycling</div>
          <input />
        </Grid>
        <Grid item>
          <div>Single-use plastic bags</div>
        <input />
        </Grid>
        <Grid item >
          <div>Single-use plastic bottles</div>
        <input />
        </Grid>
        <Grid item >
          <div>Plastic disposable straws</div>
        <input />
        </Grid>
      </Grid>
    </Grid>
  </div>
);

// water usage, shower time, dishwashing
export const WaterUsage = () => (
  <div style={styles.outer}>
    <Grid container justify="center">
      <Grid container direction="column" spacing={1} alignItems="stretch" >
        <div>
          <h1>Water Usage</h1>
          <h3 >(per day)</h3>
        </div>
        <Grid item >
          <div>How many minutes long are your showers?</div>
          <input />
        </Grid>
        <Grid item >
          <div>Minutes washing dishes</div>
        <input />
        </Grid>
        <Grid item >
          <div>Number of toilet flushes</div>
        <input />
        </Grid>
        <Grid item >
          <div>Laundry cycles (per week)</div>
        <input />
        </Grid>
      </Grid>
    </Grid>
  </div>
);

//food consumption
export const Food = () => (
  <div style={styles.outer}>
    <Grid container justify="center">
      <Grid container direction="column" spacing={1} justify="flex-start" alignItems="stretch" >
          <h1 >Food</h1>
        <Grid item >
          <div>How many servings of meat do you consume per day?</div>
          <input />
        </Grid>
        <Grid item >
          <div> organic? </div>
        <input />
        </Grid>
        <Grid item >
          <div> food waste per day</div>
        <input />
        </Grid>
      </Grid>
    </Grid>
  </div>
);

//transportation
export const Transportation = () => (
  <div style={styles.outer}>
    <Grid container justify="center">
      <Grid container xs spacing={1} direction="column" justify="flex-start" alignItems="stretch">
      <h1>Transportation</h1>
        <Grid item >
          <div>How many miles do you drive in a car per week?</div>
          <input id="milesdriven"/>
        </Grid>
        <Grid item >
          <div> public transport? </div>
        <input />
        </Grid>
        <Grid item >
          <div> length of commute</div>
        <input />
        </Grid>
        <Grid item >
          <div> yearly flights</div>
        <input />
        </Grid>
      </Grid>
    </Grid>
  </div>
);

//energy consumption
export const Example3 = () => (
  <Grid container spacing={2}>
    <Grid item xs={2}>
      <Grid
        container
        maximize
        style={styles.outer}
        justify="center"
        alignItems="center"
      >
        <IoIosCheckmarkCircleOutline />
      </Grid>
    </Grid>
    <Grid item xs>
      <Grid container style={{ ...styles.outer }} maximize>
        <Grid container spacing={2} alignItems="center" justify="center">
          <Grid item>
            <div>Last Name</div>
          </Grid>
          <Grid item>
            <input />
          </Grid>
        </Grid>
      </Grid>
    </Grid>
    <Grid item xs={2}>
      <Grid
        container
        maximize
        style={styles.outer}
        justify="center"
        alignItems="center"
      >
        <IoIosCheckmarkCircleOutline />
      </Grid>
    </Grid>
  </Grid>
);

const resultData = {
  labels: ['January', 'February', 'March',
           'April', 'May'],
  datasets: [
    {
      label: 'Rainfall',
      backgroundColor: 'rgba(75,192,192,1)',
      borderColor: 'rgba(0,0,0,1)',
      borderWidth: 2,
      data: [72, 59, 80, 81, 56]
    }
  ]
}

// graphical analysis, comparison to US averages
export const Results = () => (
  <div style={styles.outer}>
    <Grid container direction="column" justify="flex-start" alignItems="stretch">
        <h1>Results</h1>
        <Bar 
          data={resultData}
          options={{
            title:{
              display:true,
              text:'Average Rainfall per month',
              fontSize:20
            },
            legend:{
              display:true,
              position:'right'
            }
          }}
        />
     </Grid>
  </div>
);
import * as React from "react";
import Grid from "react-fast-grid";
import { IoIosCheckmarkCircleOutline, IoMdMenu } from "react-icons/io";

const styles = {
  outer: {
    borderRadius: 5,
    boxShadow: "0 10px 30px #BBB",
    padding: 10,
  },
};

// user log in credentials
// stors first name, last name, email
export const Example1 = () => (
  <div style={styles.outer}>
    <Grid container spacing={2} direction="row">
      <Grid item xs={12}>
        <h1>User Info</h1>
      </Grid>
      <Grid item sm={10}>
        <div>First Name</div>
        <input />
      </Grid>
      <Grid item sm={10}>
        <div>Last Name</div>
        <input />
      </Grid>
      <Grid item sm={10}>
        <div>Email Address</div>
        <input />
      </Grid>
      <Grid item sm={10}>
        <div>Graduating Class</div>
        <input />
      </Grid>
    </Grid>
    <Grid container spacing={2} direction="row">
      <Grid item sm={6}>
        <div>University</div>
        <input />
      </Grid>
      <Grid item sm={6}>
        <div>Gender</div>
        <input />
      </Grid>
      <Grid item sm={6} >
        <div>Building Type</div>
        <input />
      </Grid>
      <Grid item sm={6}>
        <div>Major</div>
        <input />
      </Grid>
    </Grid>
  </div>
);

// water usage, shower time, dishwashing
export const Plastic = () => (
  <div style={styles.outer}>
    <Grid container justify="space-between">
      <Grid container xs spacing={1} justify="flex-start"
      justify="center" alignItems="center" >
      <h1 >Plastic Consumption</h1>
        <Grid sm={6} item xs={12}>
          <div>Recycling</div>
          <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div>Trashbags</div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div>Plastic bottles</div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div>Food delivery</div>
        <input />
        </Grid>
      </Grid>
      <Grid item justify="flex-end" alignItems="center">
      </Grid>
    </Grid>
  </div>
);

// water usage, shower time, dishwashing
export const WaterUsage = () => (
  <div style={styles.outer}>
    <Grid container justify="space-between">
      <Grid container xs spacing={1} justify="flex-start"
      justify="center" alignItems="center" >
      <h1 >Water Usage</h1>
        <Grid sm={6} item xs={12}>
          <div>How long are your showers?</div>
          <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div>How many dishes do you wash?</div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div>How many times do you flush the toilet?</div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div>How many times do you do laungry?</div>
        <input />
        </Grid>
      </Grid>
      <Grid item justify="flex-end" alignItems="center">
      </Grid>
    </Grid>
  </div>
);

//food consumption
export const Food = () => (
  <div style={styles.outer}>
    <Grid container justify="space-between">
      <Grid container xs spacing={1} justify="flex-start"
      justify="center" alignItems="center" >
      <h1 >Food</h1>
        <Grid sm={6} item xs={12}>
          <div>plant based?</div>
          <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div> organic? </div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div> food waste</div>
        <input />
        </Grid>
      </Grid>
      <Grid item justify="flex-end" alignItems="center">
      </Grid>
    </Grid>
  </div>
);

//transportation
export const Transportation = () => (
  <div style={styles.outer}>
    <Grid container justify="space-between">
      <Grid container xs spacing={1} justify="flex-start"
      justify="center" alignItems="center" >
      <h1 >Transportation</h1>
        <Grid sm={6} item xs={12}>
          <div>car?</div>
          <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div> public transport? </div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div> length of commute</div>
        <input />
        </Grid>
        <Grid item sm={6} xs={12}>
          <div> yearly flights</div>
        <input />
        </Grid>
      </Grid>
      <Grid item justify="flex-end" alignItems="center">
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


// graphical analysis, comparison to US averages
export const Results = () => (
  <div style={styles.outer}>
    <Grid container spacing={2} direction="row" xs={12}>
      <h1>Results</h1>
    </Grid>
  </div>
);

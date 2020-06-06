import * as React from "react";
import { Container, Row, Col } from 'reactstrap';
import {Bar} from "react-chartjs-2";

// const waterData = showerTime + dishwasingTime + toiletFlush + laundryCycles;
// const plasticConsump = bagUse + bottleUse + strawUse - recycling;
// const foodData = meatConsump + foodWaste - organic;
// const transport = carMiles + commute + flights - publicTransport;

// const overallScore =(waterData + plasticConsump + foodData + transport) / 4


const resultData = {
    labels: ['Water Usage', 'Food Consumption', 'Plastic Consumption',
             'Transportation'],
    datasets: [
      {
        label: 'User',
        backgroundColor: 'rgba(75,192,192,1)',
        borderColor: 'rgba(0,0,0,1)',
        borderWidth: 2,
        data: [72, 59, 80, 81]
      },
      {
        label: 'Average',
        backgroundColor: 'rgba(75,192,0,1)',
        borderColor: 'rgba(0,0,0,1)',
        borderWidth: 2,
        data: [7, 9, 8, 1]
      }
    ]
  }


// overall score
export const Results = (props) => (
    <div>
      <div>
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
       </div>
    </div>
  );


  export const Graph = (props) => {
    return (
      <Container>
        <Row>
          <Col>what</Col>
        </Row>
        <Row>
          <Col> <h1>hi</h1></Col>
          <Col><h1>what</h1></Col>
          <Col>col3</Col>
          <Col>col3</Col>
        </Row>
        <Row>
          <Col xs="3">.col-3</Col>
          <Col xs="auto">.col-auto - variable width content</Col>
          <Col xs="3">.col-3</Col>
        </Row>
        <Row>
          <Col xs="6">.col-6</Col>
          <Col xs="6">.col-6</Col>
        </Row>
        <Row>
          <Col xs="6" sm="4">.col-6 .col-sm-4</Col>
          <Col xs="6" sm="4">.col-6 .col-sm-4</Col>
          <Col sm="4">.col-sm-4</Col>
        </Row>
        <Row>
          <Col sm={{ size: 6, order: 2, offset: 1 }}>.col-sm-6 .order-sm-2 .offset-sm-1</Col>
        </Row>
        <Row>
          <Col sm="12" md={{ size: 6, offset: 3 }}>.col-sm-12 .col-md-6 .offset-md-3</Col>
        </Row>
        <Row>
          <Col sm={{ size: 'auto', offset: 1 }}>.col-sm-auto .offset-sm-1</Col>
          <Col sm={{ size: 'auto', offset: 1 }}>.col-sm-auto .offset-sm-1</Col>
        </Row>
      </Container>
    );
  }
const mysql = require('mysql');



var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database:  "ecome"
});

con.connect(
  function(err) {
  if (err) throw err;
  console.log("Connected!");
});

con.query("CREATE table IF NOT EXISTS test(id INT)",
  function(err) {
    if(err) {
      console.log("Error");
    }
  }
);

con.query("SELECT * FROM ecome.test");
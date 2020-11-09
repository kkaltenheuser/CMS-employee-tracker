// connect JS to MYSQL
var mysql = require("mysql");
// initiate connection
var connection = mysql.createConnection({
  host: "localhost",
  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "100084896",
  database: "schema",
});
// build connection to input to lists + manipulate them
connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  //   afterConnection();
  // moreThanOnce();
  //   range(1, 20);
});

// function to add employees, managers, departments
// employee
// managers
// departments

// function to view employees, managers, departments
// employee
// managers
// departments
// function to update employee roles
// employee roles
/// bonus things if you get to it

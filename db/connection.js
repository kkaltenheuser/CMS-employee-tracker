const util = require("util");
const mysql = require("mysql");
require("dotenv").config();

const connection = mysql.createConnection({
    host: "localhost",
    // username
    user: "root"
    // password
    password: process.env.DB_PASSWORD,
    database: "employees",
});

connection.connect();

// set to use promises instead of callbacks

connection.query = util.promisify(connection.query);

module.exports = connection;
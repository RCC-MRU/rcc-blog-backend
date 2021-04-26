const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "rccblog",
});

connection.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("MYSQL database connected");
});

module.exports = connection;

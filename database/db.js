const mysql = require("mysql");
const dotenv = require('dotenv');
// const path = require('path');
// const dirname = path.resolve();
dotenv.config({path: '../.env'});


const db = mysql.createConnection({
  host: process.env.HOST || "localhost",
  user: process.env.DB_USERNAME || "root",
  password: process.env.PASSWORD || "",
  database: process.env.DATABASE || "rccblog",
  // host: process.env.HOST,
  // user: process.env.USERNAME,
  // password: process.env.PASSWORD,
  // database: process.env.DATABASE,
});

module.exports = db;

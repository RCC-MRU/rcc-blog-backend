const dotenv = require("dotenv");
dotenv.config();
const mysql = require("mysql2");

const db = mysql.createConnection({
  host: process.env.HOST || "localhost",
  user: process.env.DB_USERNAME || "root",
  password: process.env.PASSWORD || "",
  database: process.env.DATABASE || "rccblog",
});

module.exports = db;

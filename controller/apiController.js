
const db = require("../database/db");
const jwt = require("jsonwebtoken");

module.exports = {
    
    contactUs: async function (req, res) {

        let contactData = req.body;

  function isEmail(email) {
    var emailFormat = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
    if (email !== "" && email.match(emailFormat)) {
      return true;
    } else {
      return false;
    }
  }

  // check if user exist
  let userExists = `SELECT * FROM contactus WHERE email = '${contactData.email}'`;

  if (!isEmail(contactData.email)) {
    res.status(400);
    res.send({ message: "Email entered is invalid" });
  } else {
    const check = db.query(userExists, (err, result1) => {
      if (err) throw err;

      const isEntryInTable = result1.length;

      if (isEntryInTable) {
        res.status(400);
        res.send({ message: "User already exists" });
      } else {
        // if user does not exist in the database then this block will run

        let sql = `INSERT INTO contactus SET ?`;

        const query = db.query(sql, contactData, (err, result) => {
          if (err) throw err;
          res.send({
            message: "Data added successfully",
            data: result,
          });
        });

        console.log(query.sql);
      }
    });
  }
    },

    //show Comments
    showComments: async function (req, res) {
        
        let sql = `SELECT * FROM comments`;

        const query = db.query(sql, (err, result) => {
          if (err) throw err;
          res.status(200);
          res.send({ message: "Query run successful", data: result });
        });
      
        console.log(query.sql);
    },

    //Author Information
    showAuthor: async function (req, res) {
        
        let sql = `SELECT * FROM users WHERE userId = '${req.params.userId}'`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;

    res.status(200);
    res.send({
      message: "Author Details successfully received",
      details: result,
    });
  });
  console.log(query.sql);
    }
};
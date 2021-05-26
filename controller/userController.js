const express = require("express");
const db = require("../database/db");
const jwt = require("jsonwebtoken");


module.exports = {
  register: async function (req, res) {
    let registerUser = req.body;

    function isEmail(email) {
      var emailFormat = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
      if (email !== "" && email.match(emailFormat)) {
        return true;
      } else {
        return false;
      }
    }
    // check if already registered user
    let userExists = `SELECT * FROM users WHERE email = '${registerUser.email}'`;

    if (!isEmail(registerUser.email)) {
      res.status(400);
      res.send({ message: "Email entered is invalid" });
    } else {
      const check = db.query(userExists, (err, result1) => {
        if (err) throw err;

        const isEntryInTable = result1.length;

        if (isEntryInTable) {
          res.status(400);
          res.json({ message: "User already registered" });
        } else {

          let sql = `INSERT INTO users SET ?`;

          const query = db.query(sql, registerUser, (err, results) => {
            if (err) throw err;

            res.status(200).json({
              message: "user registered successfully",
              data: results,
            });
          });
        }
      })
    }
  },
  login: async function (req, res) {
    // Validate User Here
    let userData = req.body;
    let sql = `SELECT * FROM users WHERE email = '${userData.email}' AND password = '${userData.password}'`;

    // Then generate JWT Token
    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      let userExists = result.length;
      // console.log(userExists);
      if (userExists) {
        const jwtSecretKey = process.env.JWT_SECRET_KEY;

        // let id = JSON.stringify(result[0].userId);
        let id = result[0].userId;

        let data = {
          time: Date(),
          userId: id,
        };

        const token = jwt.sign(data, jwtSecretKey, {
          expiresIn: "1h",
        });
        // res.send(jwtSecretKey);
        res.send({
          message: "Login Successful",
          email: userData.email,
          userId: id,
          token: token,
        });
      } else {
        res.status(400);
        res.send({ message: "Invalid credentials" });
      }
    });
    console.log(query.sql);
  }
}


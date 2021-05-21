const express = require("express");
const db = require("../database/db");
const jwt = require("jsonwebtoken");

module.exports = {
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
  },
};

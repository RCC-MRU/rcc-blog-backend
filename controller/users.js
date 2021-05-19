const express = require("express");
const router = express.Router();
const db = require("../database/db");
const jwt = require("jsonwebtoken");

module.exports = {
  login: async (req, res) => {

    // Validate User Here
    let userData = req.body;
    let sql = `SELECT * FROM users WHERE email = '${userData.email}' AND password = '${userData.pass}'`;

    // Then generate JWT Token
    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      let num = result.length;
      
      if (num == 1) {
        const jwtSecretKey = process.env.JWT_SECRET_KEY;
        // const jwtSecretKey = "Random";
        // let id = result.forEach(element => {
        //   return element.userId;
        // });
        let id = JSON.stringify(result[0].userId);
        // let id = result.about;
        // res.send();
        let data = {
          time: Date(),
          userId: id,
        };

        const token = jwt.sign(data, jwtSecretKey, {
          expiresIn: "1h", // expires in 1 hour
        });
        // res.send(jwtSecretKey);
        res.send({
          message: "Login Successful",
          email: userData.email,
          token: token,
        });
      } else {
        res.status(400);
        res.send({ message: "Invalid credentials" });
      }
    });
  },
};

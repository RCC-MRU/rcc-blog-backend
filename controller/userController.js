const express = require("express");
const db = require("../database/db");
const jwt = require("jsonwebtoken");
const nodemailer = require("nodemailer");

const tokenMiddleware = require("../middleware/token");

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
      res.status(400).json({
        message: "Email entered is invalid",
      });
    } else {
      const check = db.query(userExists, (err, result1) => {
        if (err) throw err;

        const isEntryInTable = result1.length;

        if (isEntryInTable) {
          res.status(400).json({
            message: "User already registered",
          });
        } else {
          let sql = `INSERT INTO users SET ?`;

          const query = db.query(sql, registerUser, (err, results) => {
            if (err) throw err;

            res.status(200).json({
              message: "user registered successfully",
              result: results,
            });
          });
        }
      });
      console.log(check.sql);
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
      if (userExists > 0) {
        let resultName = result[0].firstName;
        let resultEmail = result[0].email;
        let resultID = result[0].userId;

        const token = tokenMiddleware.generateToken(resultID);

        // res.send(jwtSecretKey);
        res.status(200).json({
          message: "Login Successful",
          email: resultEmail,
          firstName: resultName,
          userId: resultID,
          token: token,
        });
      } else {
        res.status(400).json({
          message: "Invalid credentials",
        });
      }
    });
    console.log(query.sql);
  },

  forgetPass: async function (req, res) {
    let email = req.body.email;
    let sql = `SELECT * FROM users WHERE email = '${email}'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      let userExists = result.length;
      // console.log(userExists);
      if (userExists > 0) {
        let resultID = result[0].userId;
        let token = tokenMiddleware.generateToken(resultID);

        //sending mail
        const transporter = nodemailer.createTransport({
          // host: "smtp.gmail.com",
          // port: 587,
          service: "gmail",
          auth: {
            user: process.env.EMAIL_ID,
            pass: process.env.EMAIL_PASSWORD,
          },
        });

        // text: "Click on this link to reset password \n\n http://localhost:3001/users/reset-pass/".concat(
        //   token
        // ),

        const mailOptions = {
          from: process.env.EMAIL_ID,
          to: email,
          subject: "Health & Fitness - Reset Password Notification",
          text: "Click on this link to reset password \n\n http://localhost:3000/resetPassword/".concat(
            token
          ),
        };

        transporter.sendMail(mailOptions, (error, info) => {
          if (error) {
            console.log(error);
          } else {
            let sql1 = `UPDATE users SET forgetPassToken = '${token}' , forgetTokenActive = 1 WHERE email = '${email}'`;
            const query1 = db.query(sql1, (err1, result1) => {
              if (err1) throw err1;
              console.log("Email sent: " + info.response);
              console.log(token);

              res.status(200).json({
                message: "Email sent Succesfully",
                email: email,
                userId: resultID,
              });
            });
            console.log(query1.sql);
          }
        });
        // res.send(jwtSecretKey);
      } else {
        res.status(400);
        res.json({ message: "Invalid credentials" });
      }
    });
    console.log(query.sql);
  },

  resetPass: async function (req, res) {
    let sql1 = `SELECT * FROM users WHERE forgetPassToken = '${req.params.token}'`;
    const query1 = db.query(sql1, (err1, result1) => {
      if (err1) throw err1;

      if (result1.length > 0) {
        if (result1[0].forgetTokenActive === 1) {
          jwt.verify(
            req.params.token,
            process.env.JWT_SECRET_KEY,
            (jwtErr, decoded) => {
              if (jwtErr) throw jwtErr;

              const userId = decoded.userId;
              if (userId == result1[0].userId) {
                let sql2 = `UPDATE users SET password='${req.body.password}', forgetTokenActive=0 WHERE userId='${result1[0].userId}'`;
                const query2 = db.query(sql2, (err2, result2) => {
                  if (err2) throw err2;

                  console.log("Update response, Line 184", result2);

                  res.status(200);
                  res.send({
                    message: "password changed successfully",
                  });
                });
                console.log(query2.sql);
              }
            }
          );
        } else {
          res.status(404);
          res.send({
            message: "Token used already",
          });
        }
      } else {
        res.status(404);
        res.send({
          message: "Invalid token",
        });
      }
    });
    console.log(query1.sql);
  },
};

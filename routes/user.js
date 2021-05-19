// having login and signup apis

const express = require("express");
const router = express.Router();
const db = require("../database/db");
const jwt = require("jsonwebtoken");

const Users = require("../controller/users");

router.get("/", (req, res) => {
  res.send({ message: "hello" });
});

router.post("/login", Users.login);

module.exports = router;

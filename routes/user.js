// having login and signup apis

const express = require("express");
const router = express.Router();
const db = require("../database/db");
const jwt = require("jsonwebtoken");

const Users = require("../controller/userController");

router.route("/register").post(Users.register);

router.route("/login").post(Users.login);

module.exports = router;

const express = require("express");
const router = express.Router();
const db = require("../database/db");
const jwt = require("jsonwebtoken");

const Api = require("../controller/apiController");
// save contact details
router.post("/contact", Api.contactUs);

// show comments
router.get("/showcomments", Api.showComments);

//About Author information
// FIXME: make connection of this api with getSingleBlogPost
router.get("/author/:userId", Api.showAuthor);

module.exports = router;

const express = require("express");
const router = express.Router();

const { jwtVerification } = require("../middleware/token");

const Api = require("../controller/apiController");

// save contact details
router.post("/contact", Api.contactUs);

// show comments
router.get("/showComments/:slug", Api.showComments);

router.post("/addComment/:blogSlug", jwtVerification, Api.addComment);

//About Author information
// FIXME: make connection of this api with getSingleBlogPost
router.get("/author/:userId", Api.showAuthor);

module.exports = router;

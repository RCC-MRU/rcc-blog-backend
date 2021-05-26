const express = require("express");
const router = express.Router();
const db = require("../database/db");
const jwt = require("jsonwebtoken");

const Blogs = require("../controller/blogController");

// show all blog posts
router.route("/showAllBlogPost").get(Blogs.showAllBlogPost);

// show posts by slug
router.route("/showSingleBlogPost/:slug").get(Blogs.showSingleBlogPost);

// show posts by category
router.route("/showBlogsByCategory/:category").get(Blogs.showBlogsByCategory);

// show popular posts
router.route("/showPopular").get(Blogs.showPopularPosts);

// show latest posts
router.route("/showLatest").get(Blogs.showLatestPosts);

// show featured posts
router.route("/showFeatured").get(Blogs.showFeaturedPosts);

// show categories
router.route("/showCategoryMaster").get(Blogs.showCategoryMaster);

// getting category posts for homepage
router.route("/getCategoryPost").get(Blogs.getCategoryPost);

//show similar posts in decending order
router.route("/showSimilarPosts/:slug").get(Blogs.showSimilarPosts);

module.exports = router;

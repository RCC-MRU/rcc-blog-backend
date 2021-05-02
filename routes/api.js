const express = require("express");
const router = express.Router();
const db = require("../database/db");

// show all blog posts
router.get("/showAllBlogPost", (req, res) => {
  let sql = `SELECT * FROM blog `;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// show posts by slug
router.get("/showSingleBlogPost/:slug", (req, res) => {
  let sql = `SELECT * FROM blog WHERE slug = '${req.params.slug}'`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// show posts by category
router.get("/showBlogsByCategory/:category", (req, res) => {
  let sql = `SELECT * FROM blog WHERE category = '${req.params.category}'`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// show popular posts
router.get("/showPopular", (req, res) => {
  let sql = `SELECT * FROM blog ORDER BY viewCounter DESC`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// show latest posts
router.get("/showLatest", (req, res) => {
  let sql = `SELECT * FROM blog ORDER BY createdAt DESC`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// save contact details
router.post("/contact", (req, res) => {
  let contactData = req.body;

  let sql = `INSERT INTO contactus SET ?`;

  const query = db.query(sql, contactData, (err, result) => {
    if (err) throw err;
    res.send({
      message: "Data added successfully",
      data: result,
    });
  });

  console.log(query.sql);
});

// show comments
router.get("/showcomments", (req, res) => {
  let sql = `SELECT * FROM comments`;
  connection.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

// show categories
router.get("/showCategoryMaster", (req, res) => {
  let sql = `SELECT * FROM category_master`;

  db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });
});

// show featured posts
router.get("/featuredPosts", (req, res) => {
  let sql = `SELECT * FROM blog WHERE featured = 1`;

  db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });
});

module.exports = router;

const express = require("express");
const router = express.Router();
const db = require("../../database/db");

// This route is to show all blogpost details
router.get("/showAllBlogPost", (req, res) => {
  let sql = `SELECT * FROM blog `;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// This route is to show single blog post where the slug is passed dynamically
router.get("/showSingleBlogPost/:slug", (req, res) => {
  let sql = `SELECT * FROM blog WHERE slug = '${req.params.slug}'`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// This route is to show blog posts by dynamic category
router.get("/showBlogsByCategory/:category", (req, res) => {
  let sql = `SELECT * FROM blog WHERE category = '${req.params.category}'`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// This route is for popular cards
router.get("/showPopular", (req, res) => {
  let sql = `SELECT * FROM blog ORDER BY likes DESC`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// This route is to show latest posts
router.get("/showLatest", (req, res) => {
  let sql = `SELECT * FROM blog ORDER BY createdAt DESC`;

  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// This route is for saving data into contactus db
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

module.exports = router;

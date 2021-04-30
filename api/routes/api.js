const express = require("express");
const router = express.Router();
const connection = require("../../database/db");

router.get("/", (req, res) => {
  res.status(200);
  res.send({
    message: "this is api route",
  });
});

router.get("/showAllBlogPost", (req, res) => {
  let sql = "SELECT * FROM blog";

  connection.query(sql, (err, result) => {
    if (err) throw err;

    res.send({
      data: result,
    });
  });
});

router.get("/showSingleBlogPost/:slug", (req, res) => {
  let sql = `SELECT * FROM blog WHERE slug = '${req.params.slug}'`;

  connection.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  })
});

module.exports = router;

// This page contains APIs for displaying blogs

const express = require("express");
const router = express.Router();
const db = require("../database/db");
const jwt = require("jsonwebtoken");

module.exports = {
  // show all blog posts
  showAllBlogPost: async function (req, res) {
    let sql = `SELECT * FROM blog`;

    let query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200);
      res.send({ message: "Query run successfully", data: result });
    });

    console.log("QUERY: ", query.sql);
  },

  // show posts by slug
  // TODO: have to add edit this api to check with the author-details api
  showSingleBlogPost: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE slug = '${req.params.slug}'`;

    let query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200);
      res.send({
        message: "Query run successfully",
        data: result[0],
      });
    });

    console.log(query.sql);
  },

  // show posts by category
  showBlogsByCategory: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE category = '${req.params.category}'`;

    let query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.send(result);
    });

    console.log(query.sql);
  },

  // show popular posts
  showPopularPosts: async function (req, res) {
    let sql = `SELECT * FROM blog ORDER BY viewCounter DESC`;

    let query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.send(result);
    });

    console.log(query.sql);
  },

  // show latest posts
  showLatestPosts: async function (req, res) {
    let sql = `SELECT * FROM blog ORDER BY createdAt DESC`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.send(result);
    });

    console.log(query.sql);
  },

  showFeaturedPosts: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE featured = 1`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.send(result);
    });

    console.log(query.sql);
  },

  // show categories
  showCategoryMaster: async function (req, res) {
    let sql = `SELECT * FROM category_master`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.send(result);
    });

    console.log(query.sql);
  },

  getCategoryPost: async function (req, res) {
    let sql = `SELECT blogId, blogTitle, blogImg, blog.createdAt, category, firstName FROM users INNER JOIN blog ON users.userId = blog.userId AND blog.featured = 1`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.send(result);
    });
    console.log(query.sql);
  },

  showSimilarPosts: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE category = '${req.params.category}' ORDER BY createdAt DESC`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.send(result);
    });
    console.log(query.sql);
  },
};

// This page contains APIs for displaying blogs

const express = require("express");
const db = require("../database/db");
const jwt = require("jsonwebtoken");

module.exports = {
  // show all blog posts
  showAllBlogPost: async function (req, res) {
    let sql = `SELECT * FROM blog`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // show posts by slug
  showSingleBlogPost: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE slug = '${req.params.slug}' AND visibility='1'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Query run successfully",
        result: result[0],
      });
    });

    console.log(query.sql);
  },

  // show posts by category
  showBlogsByCategory: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE category = '${req.params.category}'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // show popular posts
  showPopularPosts: async function (req, res) {
    let sql = `SELECT * FROM blog ORDER BY viewCounter DESC`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // show latest posts
  showLatestPosts: async function (req, res) {
    let sql = `SELECT * FROM blog ORDER BY createdAt DESC`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // show featured posts
  showFeaturedPosts: async function (req, res) {
    let sql = `SELECT * FROM blog WHERE featured='1' AND visibility='1' `;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // show categories
  showCategoryMaster: async function (req, res) {
    let sql = `SELECT * FROM category_master`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // get the post data with category filteration
  getCategoryPost: async function (req, res) {
    let sql = `SELECT blogId, blogTitle, blogImg, blog.createdAt, category, firstName FROM users INNER JOIN blog ON users.userId = blog.userId AND blog.featured = 1`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });
    console.log(query.sql);
  },

  showSimilarPosts: async function (req, res) {
    let sql1 = `SELECT * FROM blog WHERE slug = '${req.params.slug}' AND visibility='1' `;

    const query1 = db.query(sql1, (err1, result1) => {
      if (err1) throw err1;

      if (result1.length > 0) {
        let sql2 = `SELECT * FROM blog WHERE category = '${result1[0].category}' AND NOT blogId = '${result1[0].blogId}' AND visibility='1' `;
        const query2 = db.query(sql2, (err2, result2) => {
          if (err2) throw err2;
          // console.log(result2);
          res.status(200).json({
            message: "success",
            result: result2,
          });
        });
      } else {
        res.status(400).json({
          message: "Bad Request",
        });
      }
    });
    console.log(sql1);
  },
};

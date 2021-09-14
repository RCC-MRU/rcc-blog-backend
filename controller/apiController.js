const db = require("../database/db");
const jwt = require("jsonwebtoken");

module.exports = {
  contactUs: async function (req, res) {
    let contactData = req.body;

    function isEmail(email) {
      var emailFormat = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
      if (email !== "" && email.match(emailFormat)) {
        return true;
      } else {
        return false;
      }
    }

    // check if user exist
    let userExists = `SELECT * FROM contactus WHERE email = '${contactData.email}'`;

    if (!isEmail(contactData.email)) {
      res.status(400).json({
        message: "Email entered is invalid",
      });
      // throw new Error("Email entered is invalid");
    } else {
      const check = db.query(userExists, (err, result1) => {
        if (err) throw err;

        const isEntryInTable = result1.length;

        if (isEntryInTable) {
          res.status(400).json({
            message: "User already exists",
          });
          // throw new Error("User already exists");
        } else {
          // if user does not exist in the database then this block will run

          let sql = `INSERT INTO contactus SET ?`;

          const query = db.query(sql, contactData, (err, result) => {
            if (err) throw err;
            res.status(200).json({
              message: "Data added successfully",
              result: result,
            });
          });

          console.log(query.sql);
        }
      });
    }
  },

  //show Comments
  showComments: async function (req, res) {
    let sql = `SELECT C.commentId, C.comment, C.author, C.createdAt FROM comments C INNER JOIN blog B WHERE B.blogId = C.blogId AND B.slug = '${req.params.slug}'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Query run successful",
        result: result,
      });
    });

    console.log(query.sql);
  },

  // add comment
  addComment: async function (req, res) {
    let blogDataQuery = `SELECT userId, blogId FROM blog WHERE slug = '${req.params.blogSlug}'`;

    db.query(blogDataQuery, (err, blogDataResult) => {
      if (err) throw err;

      const userId = blogDataResult[0].userId;
      const blogId = blogDataResult[0].blogId;

      let commentAuthorNameQuery = `SELECT firstname, lastname FROM users WHERE userId = '${req.result.userId}' `;

      db.query(commentAuthorNameQuery, (err, commentAuthorNameResult) => {
        if (err) throw err;

        let comment = req.body.comment;

        const author = `${commentAuthorNameResult[0].firstname} ${commentAuthorNameResult[0].lastname}`;

        let commentData = {
          userId: userId,
          blogId: blogId,
          comment: comment,
          author: author,
          visibility: 1,
        };

        let sql = `INSERT INTO comments SET ?`;

        db.query(sql, commentData, (err, result) => {
          if (err) throw err;

          res.status(200).json({
            message: "Comment added successfully",
            result: result,
          });
        });
      });
    });
  },

  //Author Information
  showAuthor: async function (req, res) {
    let sql = `SELECT * FROM users WHERE userId = '${req.params.userId}'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Author Details successfully received",
        result: result,
      });
    });
    console.log(query.sql);
  },
};

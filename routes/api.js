const express = require("express");
const router = express.Router();
const db = require("../database/db");
const dotenv = require('dotenv');
const jwt = require('jsonwebtoken');

// Set up Global configuration access
dotenv.config();

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
  // let userExists = `SELECT email FROM contactus`;
  if (!isEmail(contactData.email)) {
    res.status(400);
    res.send({ message: "Email entered is invalid" });
  } else {
    const check = db.query(userExists, (err, result1) => {
      if (err) throw err;

      const isEntryInTable = result1.length;

      if (isEntryInTable) {
        res.status(400);
        res.send({ message: "User already exists" });
      } else {
        // if user does not exist in the database then this block will run

        let sql = `INSERT INTO contactus SET ?`;

        const query = db.query(sql, contactData, (err, result) => {
          if (err) throw err;
          res.send({
            message: "Data added successfully",
            data: result,
          });
        });

        console.log(query.sql);
      }
    });
  }
});

// show comments
router.get("/showcomments", (req, res) => {
  let sql = `SELECT * FROM comments`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });

  console.log(query.sql);
});

// show categories
router.get("/showCategoryMaster", (req, res) => {
  let sql = `SELECT * FROM category_master`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });

  console.log(query.sql);
});

// show featured posts
router.get("/featuredPosts", (req, res) => {
  let sql = `SELECT * FROM blog WHERE featured = 1`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });

  console.log(query.sql);
});

// fetching data for featured post new method
router.get("/getCategoryPost", (req, res) => {
  let sql = `SELECT blogId, blogTitle, blogImg, blog.createdAt, category, firstName FROM users INNER JOIN blog ON users.userId = blog.userId AND blog.featured = 1`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });
  console.log(query.sql);
});


//for similar posts in decending order
router.get("/getSimilarPosts/:category", (req, res) => {
  let sql = `SELECT * FROM blog WHERE category = '${req.params.category}' ORDER BY createdAt DESC`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });
  console.log(query.sql);
});

//About Author information
router.get("/author/:userId", (req, res) => {
  let sql = `SELECT * FROM users WHERE userId = '${req.params.userId}'`;

  const query = db.query(sql, (err, result) => {
    if (err) throw err;

    res.send(result);
  });
  console.log(query.sql);
});
router.post("/user/login", (req, res) => {
  // Validate User Here
  let userData = req.body;
  let sql = `SELECT * FROM users WHERE email = '${userData.email}' AND password = '${userData.pass}'`;
  // Then generate JWT Token
  const query = db.query(sql, (err, result) => {
    if (err) throw err;
    let num = result.length;
    if(num == 1){
      const jwtSecretKey = process.env.JWT_SECRET_KEY;
  // const jwtSecretKey = "Random";
  // let id = result.forEach(element => {
  //   return element.userId;
  // });
  let id = JSON.stringify(result[0].userId);
  // let id = result.about;
  // res.send();
  let data = {
      time: Date(),
      userId: id
  }

  const token = jwt.sign(data, jwtSecretKey, {
    expiresIn: '1h' // expires in 1 hour
     });
  // res.send(jwtSecretKey);
  res.send({
    "message" : "Login Successful",
    "email" : userData.email,
    "token" : token
  });
    }
    else{
        res.status(400);
        res.send({ message: "Invalid credentials" });
    }
  });
  
});
module.exports = router;

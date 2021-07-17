// Declaration of production environment
if (process.env.NODE_ENV !== "production") {
  // For Environment variables
  const dotenv = require("dotenv");
  dotenv.config();
}

const express = require("express");
const app = express();
const morgan = require("morgan");
const cors = require("cors");

const port = process.env.PORT || 3000;

// middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(morgan("dev"));
app.use(cors());

// Calling database and authenticate
const db = require("./database/db");
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("MYSQL database connected");
});
const tokenMiddleware = require("./middleware/token");

// api route
const apiRouter = require("./routes/api");
app.use("/apis", apiRouter);

// blogs route
const blogRouter = require("./routes/blog");
app.use("/blogs", blogRouter);

// users route
const userRouter = require("./routes/user");
app.use("/users", userRouter);

//verify
// app.use("/test", tokenMiddleware.jwtVerification, (req, res) => {
//   console.log("User Testing");
// });

// root route
app.use("*", (req, res) => {
  res.status(200);
  res.send({
    message: "this is the root route",
  });
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});

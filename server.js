const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const morgan = require("morgan");
const port = process.env.PORT || 3001;

// middlewares
app.use(bodyParser.json());
app.use(morgan("dev"));

// api route
const apiRouter = require("./api/routes/api");
app.use("/routes", apiRouter);

// root route
app.use("/", (req, res) => {
  res.status(200);
  res.send({
    message: "this is the root route",
  });
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});

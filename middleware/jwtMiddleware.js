dotenv = require("dotenv");
jwt = require("jsonwebtoken");

dotenv.config({ path: "../.env" });
module.exports = {
  jwtVerification: async function (req, res, error, next) {
    // let tokenHeaderKey = process.env.TOKEN_HEADER_KEY;
    let jwtSecretKey = process.env.JWT_SECRET_KEY;

    try {
      const token = await req.header("token");

      const verified = jwt.verify(token, jwtSecretKey);
      if (verified) {
        res.send("Successfully Verified");
        next();
      } else {
        // Access Denied
        res.status(401).send(error);
      }
    } catch (error) {
      // Access Denied
      return res.status(401).send(error);
    }
  },
};

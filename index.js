const express = require("express");
const PORT = process.env.PORT || 3001;
const app = express();
const ExpressError = require("./ExpressError");
const home = require("./routes/home");
const auth = require("./routes/auth");
const users = require("./routes/users");
const morgan = require("morgan");
const cors = require("cors");
// Parse request bodies for JSON
app.use(cors());
app.use(express.json());

app.use("/", home);
app.use("/users", users);
app.use("/auth", auth);
app.use(morgan("dev"));

app.use(function (err, req, res, next) {
  // the default status is 500 Internal Server Error
  let status = err.status || 500;
  let message = err.message;

  // set the status and alert the user
  return res.status(status).json({
    error: { message, status },
  });
});
app.listen(PORT, function () {
  console.log("Server starting on port 3001");
});

module.exports = app;

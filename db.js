const { Client } = require("pg");

let DB_URI;

if (process.env.NODE_ENV === "test") {
  DB_URI = "postgresql:///NNC_test";
} else {
  DB_URI = "postgresql:///NNC";
}

let db = new Client({
  connectionString: DB_URI,
});

db.connect();

module.exports = db;

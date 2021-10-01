const { Client } = require("pg");

let DB_URI;
if (process.env.DATABASE_URL !== null) {
  DB_URI = process.env.DATABASE_URL;
} else {
  DB_URI = "postgresql:///NNC";
}

let db = new Client({
  connectionString: DB_URI,
});

db.connect();

module.exports = db;

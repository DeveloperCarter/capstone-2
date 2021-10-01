const express = require("express");
const db = require("../db");
const axios = require("axios");
async function getData() {
  let response = await axios.get(
    "https://newsapi.org/v2/top-headlines?country=us&apiKey=f8d82ce36f72429fa0101925988eccee"
  );
  let res = response.data.articles;
  for (let i in res) {
    const name = res[i].name;
    const title = res[i].title;
    const img = res[i].urlToImage;
  }
}

module.exports = getData();

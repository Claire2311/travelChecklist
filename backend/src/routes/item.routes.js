const express = require("express");

const router = express.Router();

const itemControllers = require("../controllers/itemControllers");

router.get("/", itemControllers.browse);

module.exports = router;

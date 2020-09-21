let express = require('express');
let router = express.Router();
let loginController = require('../controllers/loginController');
const { Router } = require('express');

router.get('/', loginController.log)



module.exports= router;
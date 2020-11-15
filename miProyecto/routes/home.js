let express = require('express');
let router = express.Router();
let homeController = require('../controllers/homeController');
const loginController = require('../controllers/loginController');

router.get('/',homeController.index);




module.exports = router;
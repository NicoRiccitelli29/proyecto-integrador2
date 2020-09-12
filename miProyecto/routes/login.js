let express = require('express');
let router = express.Router();
let loginController = require('../controllers/loginController');

router.get('/', loginController.log)



module.exports= router;
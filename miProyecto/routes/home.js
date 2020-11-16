let express = require('express');
let router = express.Router();
let homeController = require('../controllers/homeController');
const loginController = require('../controllers/loginController');

router.get('/',homeController.index);
router.get('/miPerfil', homeController.miPerfil);




module.exports = router;
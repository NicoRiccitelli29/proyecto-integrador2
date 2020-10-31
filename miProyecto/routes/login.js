let express = require('express');
let router = express.Router();
let loginController = require('../controllers/loginController');
const resultadoBusquedaController = require('../controllers/resultadoBusquedaController');


router.get('/', loginController.log);
router.post('/', loginController.login);



module.exports= router;
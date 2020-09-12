let express = require('express');
let router = express.Router();
let resultadoController= require('../controllers/resultadoController'); 

router.get('/', resultadoController.resul)


module.exports = router
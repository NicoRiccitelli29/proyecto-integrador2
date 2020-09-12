let express = require('express');
let router = express.Router();
let miPerfilController = require('../controllers/miPerfilController');

router.get('/', miPerfilController.perfil)


module.exports= router;
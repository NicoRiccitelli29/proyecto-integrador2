let express = require('express');
let router = express.Router();
let miPerfilController = require('../controllers/miPerfilController');
const { Router } = require('express');

router.get('/.id', miPerfilController.perfil)



module.exports= router;
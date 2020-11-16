let express = require('express');
let router = express.Router();
let miPerfilController = require('../controllers/miPerfilController');
const { Router } = require('express');

<<<<<<< Updated upstream
router.get('/:id', miPerfilController.perfil);
=======
//router.get('/:id', miPerfilController.perfil)
router.get('/', miPerfilController.perfil);
>>>>>>> Stashed changes



module.exports= router;
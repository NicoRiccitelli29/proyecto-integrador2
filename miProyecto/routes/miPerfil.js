let express = require('express');
let router = express.Router();
let miPerfilController = require('../controllers/miPerfilController');


router.get('/', miPerfilController.perfil);

router.get('/editarPerfil', miPerfilController.editarPerfil);
router.post('/editarPerfil',miPerfilController.actualizarPerfil);




module.exports= router;
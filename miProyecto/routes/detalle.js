let express = require('express');
let router = express.Router();
let detalleController = require('../controllers/detalleController');

router.get('/usuario', detalleController.usuario);
router.get('/post', detalleController.post);

module.exports = router;
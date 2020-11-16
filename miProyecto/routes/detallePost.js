let express = require("express");
let router = express.Router();
let detallePostController = require('../controllers/detallePostController');

router.get("/", detallePostController.index);
router.get('/:id', detallePostController.porId);
router.get('/:id/comentar', detallePostController.comentario);

module.exports = router;
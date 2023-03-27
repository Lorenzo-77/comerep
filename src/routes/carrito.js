const express = require('express');
const CarritoController = require('../controllers/CarritoController');
const routerCarrito = express.Router();

routerCarrito.post('/cart/add', CarritoController.index);

routerCarrito.get('/cart', CarritoController.carrito);

routerCarrito.post('/cart/:id/delete', CarritoController.eliminarProducto);

routerCarrito.get('/atletas', CarritoController.atletas);

module.exports = routerCarrito;
const express = require('express');
const CategoriController = require('../controllers/CategoriaController');
const { isLoggedIn } = require('../lib/auth');
const routerCategorias = express.Router();

routerCategorias.get('/createCategoria', isLoggedIn, CategoriController.createCategoria);
routerCategorias.post('/createCategoria', isLoggedIn, CategoriController.storeCategoria);

routerCategorias.get('/createMarca', isLoggedIn, CategoriController.createMarca);
routerCategorias.post('/createMarca', isLoggedIn, CategoriController.storeMarca);

/* BUSCADOR POR MARCAS */
routerCategorias.get('/mmeddfit', CategoriController.nombreMarca1);
routerCategorias.get('/fullfitnes', CategoriController.nombreMarca2);
routerCategorias.get('/aagrip', CategoriController.nombreMarca3);
routerCategorias.get('/balboafit', CategoriController.nombreMarca4);
routerCategorias.get('/rx326', CategoriController.nombreMarca5);
routerCategorias.get('/barak', CategoriController.nombreMarca6);
routerCategorias.get('/onefeet', CategoriController.nombreMarca7);
routerCategorias.get('/quelopaleo', CategoriController.nombreMarca8);
routerCategorias.get('/presslove', CategoriController.nombreMarca9);
routerCategorias.get('/otros', CategoriController.nombreMarca10);

/* BUSCADOR POR CATEGORIAS */
routerCategorias.get('/calleras', CategoriController.nombreCategori1);
routerCategorias.get('/munequeras', CategoriController.nombreCategori2);
routerCategorias.get('/rodilleras', CategoriController.nombreCategori3);
routerCategorias.get('/sogas', CategoriController.nombreCategori4);
routerCategorias.get('/magnesio', CategoriController.nombreCategori5);
routerCategorias.get('/mochilas', CategoriController.nombreCategori6);
routerCategorias.get('/medias', CategoriController.nombreCategori7);
routerCategorias.get('/snacks', CategoriController.nombreCategori8);
routerCategorias.get('/cinturones', CategoriController.nombreCategori9);
routerCategorias.get('/otros', CategoriController.nombreCategori10);



module.exports = routerCategorias;
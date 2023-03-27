function createCategoria(req, res) {
    res.render('tasks/createCategoria');
  }
  
  function storeCategoria(req, res) {
    const data = req.body;
    console.log(data);
    req.getConnection((err, conn) => {
      conn.query('INSERT INTO categoria SET ?', [data], (err, rows) => {
        res.redirect('/createCategoria');
      });
    });
  }

  function createMarca(req, res) {
    res.render('tasks/createMarca');
  }
  
  function storeMarca(req, res) {
    const data = req.body;
    console.log(data);
    req.getConnection((err, conn) => {
      conn.query('INSERT INTO marca SET ?', [data], (err, rows) => {
        res.redirect('/createMarca');
      });
    });
  }
/* buscador Por marcas */ 
  function nombreMarca1(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 1', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca2(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 2', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca3(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 3', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca4(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 4', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca5(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 5', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca6(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 6', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca7(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 7', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca8(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 8', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca9(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 9', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreMarca10(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idMarc = 10', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

/* buscador Por Categorias */ 

  function nombreCategori1(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 1', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori2(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 2', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori3(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 3', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori4(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 4', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori5(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 5', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori6(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 6', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori7(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 7', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori8(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 8', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori9(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 9', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }

  function nombreCategori10(req,res){
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idCategori = 10', (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tienda/index', { item });
      });
    });
  }
  module.exports = {
    createCategoria: createCategoria,
    storeCategoria: storeCategoria,
    createMarca: createMarca,
    storeMarca: storeMarca,

    nombreMarca1: nombreMarca1,
    nombreMarca2: nombreMarca2,
    nombreMarca3: nombreMarca3,
    nombreMarca4: nombreMarca4,
    nombreMarca5: nombreMarca5,
    nombreMarca6: nombreMarca6,
    nombreMarca7: nombreMarca7,
    nombreMarca8: nombreMarca8,
    nombreMarca9: nombreMarca9,
    nombreMarca10: nombreMarca10,

    nombreCategori1: nombreCategori1,
    nombreCategori2: nombreCategori2,
    nombreCategori3: nombreCategori3,
    nombreCategori4: nombreCategori4,
    nombreCategori5: nombreCategori5,
    nombreCategori6: nombreCategori6,
    nombreCategori7: nombreCategori7,
    nombreCategori8: nombreCategori8,
    nombreCategori9: nombreCategori9,
    nombreCategori10: nombreCategori10,

  }
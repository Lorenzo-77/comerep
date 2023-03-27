
function index(req, res) {
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE idUser = ?',[req.user.id], (err, item) => {
        if(err) {
          res.json(err);
        }
        
        res.render('tasks/todo', { item });
      });
    });
  }

  function create(req, res) {
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM marca', (err, marca) => {
        conn.query('SELECT * FROM categoria', (err, categoria) => {
        if(err) {
          res.json(err);
        }
        res.render('tasks/create',{marca,categoria});
      });
    });
  });
        
  }
  
  
  
  function store(req, res) {
    const {titulo,precio,descripcion,estado,idCategori,idMarc} = req.body;


    const nombre = req.files[0].originalname;
    const nombre2 = req.files[1].originalname;
    const nombre3 = req.files[2].originalname;
   
    const data = {
      titulo,precio,estado,descripcion,nombre,nombre2,nombre3,idCategori,idMarc,
      idUser: req.user.id 
    };

    req.getConnection((err, conn) => {
      conn.query('INSERT INTO item SET ?', [data], (err, rows) => {
        res.redirect('/create');
      });
    });
  }
  
  function destroy(req, res) {
    const id = req.body.id;
    req.getConnection((err, conn) => {
      conn.query('DELETE FROM item WHERE id = ?', [id], (err, rows) => {
        res.redirect('/tasks');
      });
    })
  }
  
  function edit(req, res) {
    const id = req.params.id;
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE id = ?', [id], (err, item) => {
        if(err) {
          res.json(err);
        }
        res.render('tasks/edit', { item });
      });
    });
  }
  
  function update(req, res) {
    const id = req.params.id;
    const data = req.body;
    req.getConnection((err, conn) => {
      conn.query('UPDATE item SET ? WHERE id = ?', [data, id], (err, rows) => {
        res.redirect('/tasks');
      });
    });
  }

  function editadd(req, res) {
    const id = req.params.id;
    req.getConnection((err, conn) => {
      conn.query('SELECT * FROM item WHERE id = ? ', [id], (err, item) => {
       
        if(err) {
          res.json(err);
        }
        res.render('tasks/add', { item});
      });
    });
}
  
  function updateadd(req, res) {
    const id = req.params.id;
    const data = req.body;
    req.getConnection((err, conn) => {
      conn.query('INSERT INTO carro SET ? id = ?', [data, id], (err, rows) => {
        res.redirect('/tasks');
      });
    });
  }

  module.exports = {
    index: index,
    create: create,
    store: store,
    destroy: destroy,
    edit: edit,
    update: update,
    editadd: editadd,
    updateadd: updateadd,
  }
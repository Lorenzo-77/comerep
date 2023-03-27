function index(req, res) {
  const productId = req.body.id;
  const cart = req.session.cart || [];

  if (!cart.includes(productId)) {
    cart.push(productId);
  }
  req.session.cart = cart;
  res.redirect('/cart');
}

//

function carrito(req, res) {
  const cart = req.session.cart || [];
  console.log(cart)
  const productIds = cart.join(',');
  console.log(productIds);
  if (productIds) {
  req.getConnection((err, conn) => {
    conn.query(`SELECT * FROM item WHERE id IN (${productIds})`, (err, item) => {     
      if(err) {
        res.json(err);
      }
      const total = item.reduce((sum, item) => sum + item.precio, 0);
      res.render('tienda/cart', { item: item, total });
    });
  });} else {
    res.render('tienda/cart', { item: [], total: 0 });
  }

}

function eliminarProducto(req, res) {
  const productId = req.params.id;
  const cart = req.session.cart || [];

  if (cart.includes(productId)) {
    const index = cart.indexOf(productId);
    cart.splice(index, 1);
    req.session.cart = cart;
  }
  res.redirect('/cart');
}

function atletas(req, res) {

  res.render('tienda/atletas');

}
  module.exports = {
    index: index,
    carrito: carrito,
    eliminarProducto: eliminarProducto,
    atletas: atletas
  }
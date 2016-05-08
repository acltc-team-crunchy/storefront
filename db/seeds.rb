User.create!([
  {email: "mark@anyonecanlearntoccode.com", password: "password"} 
])
CartedProduct.create!([
  {product_id: 1, order_id: 1, quantity: 1},
  {product_id: 2, order_id: 1, quantity: 3},
  {product_id: 3, order_id: 1, quantity: 1},
  {product_id: 1, order_id: 2, quantity: 3},
  {product_id: 3, order_id: 2, quantity: 2},
  {product_id: 4, order_id: 2, quantity: 1}
])
Image.create!([
  {product_id: 1, image_url: "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/Tacos-De-Cochinita-Pibil-1024x686.jpg"},
  {product_id: 2, image_url: "http://upload.wikimedia.org/wikipedia/commons/b/b5/01_Tacos_al_Pastor.jpg"},
  {product_id: 3, image_url: "http://chicago.seriouseats.com/images/2012/10/20121004-224862-chicago-tacos-2-amigos-carne-asada.jpg"},
  {product_id: 4, image_url: "http://i.ytimg.com/vi/gN8IVq7Phn4/maxresdefault.jpg"},
  {product_id: 5, image_url: "http://stream1.gifsoup.com/view7/4201326/exploding-taco-in-slow-motion-o.gif"},
  {product_id: 6, image_url: "http://www.gimmesomeoven.com/wp-content/uploads/2012/09/crispy-slow-cooker-carnitas-2.jpg"},
  {product_id: 1, image_url: "https://d29vij1s2h2tll.cloudfront.net/~/media/images/taco-bell/products/heroes/22848_specialties_quesalupa_1400x800.jpg"},
  {product_id: 1, image_url: "http://www.beavermethodist.org/wp-content/uploads/tacooo-copy.jpg"}
])

Product.create!([
  {name: "Cochinita Pibil", price: 126.0, description: "Mouthwatering, slow-cooked pork on a corn tortilla, served with queso fresco, pickled onions y cilantro!", rating: nil, status: true, supplier_id: 1},
  {name: "Al Pastor", price: 14.0, description: "Succulent, smoky, earthy, spiced and grilled pork strips seasoned with adobo seasoning. Served on a corn tortilla with cilantro y cebollas", rating: nil, status: true, supplier_id: 1},
  {name: "Tacos de Asador", price: 343.0, description: "Skirt steak seasoned and grilled until crisp, served in a corn tortilla with cilantro y cebollas. Spicy habanero or medium chile salsa upon request. #awesome", rating: nil, status: true, supplier_id: 2},
  {name: "Tacos de pescado", price: 121.0, description: "Fresh Mahi Mahi battered and flash-fried, served on a corn tortilla and garnished with slaw, crema and a side of avocado, lime and pico de gallo.", rating: 5, status: true, supplier_id: 2},
  {name: "Exploding Taco", price: 10.0, description: "BOOM!", rating: nil, status: true, supplier_id: 1},
  {name: "Carnitas", price: 65.0, description: "Twice-cooked mouthwatering pork tacos served on a corn tortilla con cebollas y cilantro", rating: nil, status: true, supplier_id: 2},
  {name: "Passable taco", price: 45.0, description: "must save to database", rating: nil, status: true, supplier_id: 2}
])
Supplier.create!([
  {name: "Bob's Tacos", email: "bob@gmail.com", phone: "343-234-2342"},
  {name: "Timmy's Tacos", email: "tim@gmail.com", phone: "414-234-6542"}
])

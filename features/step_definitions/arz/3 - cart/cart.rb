Então("devo visualizar no carrinho") do
  step 'visualizar no carrinho'
end

Quando("continuar comprando") do
  @cart.continue
end

Quando("visualizar no carrinho") do
  @cart = $arz_pages.cart
  @box_produto_cart = @cart.box_product_cart.last
  @price_plus_price = (@price_plus_price.to_f + @price.to_f).to_s
  expect(@box_produto_cart.name).to eql(@name)
  expect(@box_produto_cart.price).to eql(@price)
  expect(@box_produto_cart.size).to eql(@size)
end

Então("validar carrinho") do
  @box_produto_cart = @cart.box_product_cart.first
  expect(@old_name).to eql(@box_produto_cart.name)
  expect(@cart.total_price.to_f).to eql(@price_plus_price.to_f)
end
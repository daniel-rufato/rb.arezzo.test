Quando("abrir a {string}") do |c|
  @header.abrir_categoria(c)
end

Quando("filtrar pela numeração {string}") do |size|
  sleep 2
  @listing.select_size(size)
  expect(@listing.btn_selected).to eql(size)
  sleep 4
end

Quando("adicionar o {string} nº {string} ao carrinho") do |shoe,size|
  @product = $arz_pages.product
  @listing.open_prod(shoe,size)
  @listing.select_size(size)
  @old_name = @name
  @name = @product.get_name
  @price = @product.get_price
  @size = @product.get_size
  @product.add_cart
end
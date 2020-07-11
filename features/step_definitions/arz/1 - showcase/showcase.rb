Dado("que esteja na vitrine {string}") do |shoe|
  step 'que acesse a home'
  step "selecionar a vitrine de '#{shoe}'"
end

Quando("selecionar a vitrine de {string}") do |shoe|
  @listing = $arz_pages.listing
  @home.showcase_lists(shoe)
  expect(@listing.showcase_name).to eql(shoe)
end
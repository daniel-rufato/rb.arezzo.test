Dado("que acesse a home") do
  @home = $arz_pages.home
  @home.load
  sleep 3
end

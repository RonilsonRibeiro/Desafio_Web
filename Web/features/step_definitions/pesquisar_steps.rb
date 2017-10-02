Dado("que estou no site da OLX") do
  @home = Home.new
  @lista = Lista.new
  @home.load
end

Dado("escolhi o estado de {string}") do |estado|
  @home.selecionar_estado(estado)
end

Quando("eu fizer uma busca por {string}") do |produto|
  @lista.buscar(produto)
end

Então("imprimirei o título e valor dos primeiros {int} resultados") do |int|
  @lista.listar_itens(int)
end

Quando("for para a página {string}") do |string|
  @lista.mudar_pagina(string)
end

Quando("abrir o resultado {int}") do |int|
  @lista.detalhar_produto(int)
end

Então("farei um print dos dados") do
  @lista.tirar_print()
end

#language: pt
#utf-8

Funcionalidade: Pesquisar produto
Eu como cliente
Quero fazer pesquisas no site da OLX
Para buscar por produtos

Contexto: Usuário acessa a home do site e posiciona o estado
		Dado que estou no site da OLX
		E escolhi o estado de 'SP'

@1
Cenário: Buscar os cinco primeiros resultados
		Quando eu fizer uma busca por 'violão'
		Então imprimirei o título e valor dos primeiros 5 resultados

@2
Cenário: Buscar o primeiro item da segunda página
		Quando eu fizer uma busca por 'Fiat Uno'
		E for para a página "2"
		E abrir o resultado 1
		Então farei um print dos dados

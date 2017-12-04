#language: pt
#utf-8

 @edicao
Funcionalidade: Editar empregado
	Eu como usuário 
	Quero editar um empregado no site ORANGEHRM 
	Para atualizar as informações de cadastro

	Cenario: Editar empregado
	Dado que acessei a home do site
	Quando realizar o login
	E entrar no menu pim e Employee List
	E pesquisar por um empregado
	E editar as informações
	Entao o cadastro será atualizado
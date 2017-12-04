Dado("que acessei a home do site") do

	visit "http://opensource.demo.orangehrmlive.com/"

end

Quando("realizar o login") do

	find(:id,'txtUsername').set 'admin'
	find(:id,'txtPassword').set 'admin'
	click_button('btnLogin')
  
end

Quando("entrar no menu pim e Employee List") do

	find(:xpath,'//*[@id="menu_pim_viewPimModule"]').click
	find(:xpath,'//*[@id="menu_pim_viewEmployeeList"]').click

end

Quando("pesquisar por um empregado") do

	find(:id,'empsearch_id').set '9999'
	click_button('searchBtn')
	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[3]/a').click
  
end

Quando("editar as informações") do

	click_button('btnSave')
	find(:id,'personal_txtOtherID').set '1111'
	find(:id,'personal_txtLicenNo').set '123456789'
	find(:id,'personal_cmbMarital').select 'Single'
	find(:id,'personal_cmbNation').select 'Brazilian'
	choose('personal_optGender_1').click
	click_button('btnSave')
  
end

Entao("o cadastro será atualizado") do
	assert_text('Successfully Saved')
  
end
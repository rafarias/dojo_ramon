Dado("que estou na home do site") do

    visit "http://opensource.demo.orangehrmlive.com/"

end

Quando("efetuar meu login") do

    find(:id,'txtUsername').set 'admin'
    find(:id,'txtPassword').set 'admin'
    click_button('btnLogin')

end

Quando("entrar na aba PIM Add Employee") do

  	find(:xpath,'//*[@id="menu_pim_viewPimModule"]').click
  	find(:xpath,'//*[@id="menu_pim_addEmployee"]').click
  	find(:id,'firstName').set 'Ramon'
  	find(:id,'middleName').set 'Fernandes'
  	find(:id,'lastName').set 'de Farias'
  	find(:id,'employeeId').set '9999'
  	find(:xpath,'//*[@id="chkLogin"]').click
  	find(:id,'user_name').set 'RamonFarias'
  	find(:id,'user_password').set 'admin'
  	find(:id,'re_password').set 'admin'
  	click_button('btnSave')

end

Entao("efetuarei o meu cadastro") do

    assert_text('License Expiry Date')

end
Dado("que acesso a pagina heroes para realizar a exclusão") do
  visit 'http://heroes.qanw.com.br/'
end

Então("devo realizar busca para exclusão") do
  find(:xpath,"//*[@id='app']/div[3]/div/main/main/div/div/div[1]/div[1]/input").click()
  find(:xpath,"//*[@id='app']/div[3]/div/main/main/div/div/div[1]/div[1]/input").send_keys("Thanos")
end

Então("clicar sobre botão excluir") do
  find(:xpath, "//*[@id='app']/div[3]/div/main/main/div/div/div[2]/div/div/div[1]/table/tbody/tr[1]/td[10]/div/i").click()  
  
end

Quando("confirmar a exclusão meu heroi é excluido") do
  find_button('Apagar').click()
end
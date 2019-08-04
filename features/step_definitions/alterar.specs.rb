Dado("que acesso a pagina heroes para alteração") do
    visit 'http://heroes.qanw.com.br/' 
end

Então("devo realizar busca") do
    find(:xpath,"//*[@id='app']/div[3]/div/main/main/div/div/div[1]/div[1]/input").click()
    find(:xpath,"//*[@id='app']/div[3]/div/main/main/div/div/div[1]/div[1]/input").send_keys("Thanos")
  end
  
  Então("clicar sobre botão alterar") do
    find(:xpath,"//*[@id='app']/div[3]/div/main/main/div/div/div[2]/div/div/div[1]/table/tbody/tr/td[10]/div/a/i").click()
  end
  
  Quando("alterar dados") do
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[1]/div/div/div/div[1]/div/input").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[1]/div/div/div/div[1]/div/input").send_keys(:backspace)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[1]/div/div/div/div[1]/div/input").send_keys("Thanos1")
end
  
Quando("clicar no botão Salvar o sistema devera exibir mensagem de alteração Salvo com sucesso") do
  find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[3]/div/button").click()
  expect(page).to have_selector :xpath, '//*[contains(., "Salvo com sucesso")]'
end
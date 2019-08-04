Dado("que acesso a pagina heroes") do
    visit 'http://heroes.qanw.com.br/' 
end
Então("devo clicar sobre botão criar") do
    find(:xpath, "//*[@id='app']/div[3]/div/header/div[2]/nav/div/div[2]/div/div/div[2]/div/a").click()
    sleep 3
end

Quando("informar os campos") do
    find(:xpath, "//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[1]/div/div/div/div[1]/div/input").click()
    find(:xpath, "//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[1]/div/div/div/div[1]/div/input").send_keys('Thanos')  
    find(:xpath, "//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[2]/div/div/div/div[1]/div[1]/div[1]").click()
    find(:xpath,"//*[@id='app']/div[2]/div/div/div[7]/a/div[2]/div").click()
    find(:xpath, "//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[3]/div/div/div/div[1]/div[1]/div[1]").click()
    find(:xpath,"//*[@id='app']/div[1]/div/div/div[4]/a/div/div").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[4]/div/div").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[4]/div/div/div/div[1]/div/input").send_keys(:backspace)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[4]/div/div/div/div[1]/div/input").send_keys(500)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[5]/div/div/div/div[1]/div/input").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[5]/div/div/div/div[1]/div/input").send_keys(:backspace)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[5]/div/div/div/div[1]/div/input").send_keys(500)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[6]/div/div/div/div[1]/div/input").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[6]/div/div/div/div[1]/div/input").send_keys(:backspace)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[6]/div/div/div/div[1]/div/input").send_keys(500)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[7]/div/div/div/div[1]/div/input").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[7]/div/div/div/div[1]/div/input").send_keys(:backspace)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[7]/div/div/div/div[1]/div/input").send_keys(500)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[8]/div/div/div/div[1]/div/input").click()
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[8]/div/div/div/div[1]/div/input").send_keys(:backspace)
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[1]/div/div/div/form/div/div[8]/div/div/div/div[1]/div/input").send_keys(500)
end

  Quando("clicar no botão Salvar o sistema devera exibir mensagem Salvo com sucesso") do
    find(:xpath,"//*[@id='app']/div[4]/div/main/main/div/div/div[3]/div/button").click()
    expect(page).to have_selector :xpath, '//*[contains(., "Salvo com sucesso")]'
end
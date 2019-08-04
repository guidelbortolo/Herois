Dado("que eu informr o ID {int}") do |int|
  @id = int
end
  
  Quando("efetuar a requisição na API get") do
    @result = HTTParty.get("http://heroes.qanw.com.br:9091/heroes/#{@id}")
  end
  
  Então("é retornado os dados do herói") do
    @respId = @id
    @heroi = @result.parsed_response
    puts @heroi
    expect(@heroi['id']).to eq(@respId)
  end
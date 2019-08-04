# coding: uft-8
# language: pt
@api
Funcionalidade: Consultar Heroi

Eu como usuário posso consultar Herói

Cenário: Consultar herói ID
Dado que eu informr o ID 55
Quando efetuar a requisição na API get 
Então é retornado os dados do herói

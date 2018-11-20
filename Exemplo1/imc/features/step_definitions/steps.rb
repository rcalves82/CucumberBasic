require_relative '../../src/imc.rb'

# Praparação 1
Dado("que meu peso é {string} kilos") do |peso|
  @peso = peso
end

# Praparação 2
Dado("minha altura é {string}") do |altura|
  @altura = altura
end

# Ação
Quando("faço o cálculo do IMC") do
  imc = Imc.new
  @resultado = imc.calcula(@peso, @altura)
end

# Verificação
Então("vejo a mensagem {string}") do |mensagem|
  expect(@resultado).to eql mensagem
  
end
  
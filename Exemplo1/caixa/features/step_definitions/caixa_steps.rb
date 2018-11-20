  require_relative '../../src/conta'
  
  Dado("que eu tenho R$ {int} de saldo na minha conta") do |saldo|
    @conta = Conta.new(saldo)
  end
  
  Quando("faço um saque de R$ {int}") do |valor|
    @conta.saque(valor)
  end
  
  Então("vejo a mensagem {string}") do |mensagem|
    expect(@conta.retorno).to eql mensagem    
  end
  
  Então("minha conta deve ficar com saldo de R$ {int}") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
  end
  
  
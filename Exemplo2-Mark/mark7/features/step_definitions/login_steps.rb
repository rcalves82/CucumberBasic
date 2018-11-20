Dado('que estou na página de login') do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @login_page.load  
end

Dado("a quantidade máxima de login é de {int} tentativas") do |tentativa|
    @tentativa = tentativa + 1    
end 
  
Quando('faço login com {string} e {string}') do |email, senha|
    @login_page.logar(email, senha)
end

Quando("tento logar com {string} e {string}") do |email, senha|
    @tentativa.times do
        @login_page.logar(email, senha)
    end
  end
  
Então('devo ver a mensagem {string}') do |mensagem|
    expect(@tarefas_page.ola.text).to eql mensagem
end

Então("devo ver a mensagem de alerta {string}") do |mensagem|
    expect(@login_page.alerta.text).to eql mensagem
end
  

  
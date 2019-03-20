require 'faker'

Dado('que {string} é a minha nova tarefa') do |nova_tarefa|
  @nova_tarefa = { nome: nova_tarefa, data: nil, tags: [] }
  MarkDb.new.apaga_tarefa(nova_tarefa)
end

Dado('que {string} é a minha nova tarefa dinâmica') do |nova_tarefa|
  @nova_tarefa = {
    nome: "#{nova_tarefa} - #{Faker::Lorem.characters(10)}",
    data: nil,
    tags: []
  }
end

Dado('devo finalizar esta tarefa até {string}') do |data_tarefa|
  @nova_tarefa[:data] = data_tarefa
end

Dado('além disso quero taguear esta tarefa com:') do |table|
  @nova_tarefa[:tags] = table.hashes
end

Quando('eu faço o cadastro desta tarefa') do
  @page.tarefas.botao_novo
  @page.tarefas.nova(@nova_tarefa)
end

Então('devo ver este cadastro na lista com o status {string}') do |status_tarefa|
  linha = @page.tarefas.obter_tr_por_nome(@nova_tarefa[:nome])
  expect(linha).to have_content status_tarefa
end

# Remover

Dado('esta tarefa é indesejada') do
  steps %(
    Quando eu faço o cadastro desta tarefa
  )
end

Quando('eu solicito a exclusão desta tarefa') do
  @page.tarefas.solicita_exclusao(@nova_tarefa[:nome])  
end

Quando('confirmo esta solicitação') do
  @component.modal.confirma
  sleep 5
end

Então('esta tarefa não deve ser exibida na lista') do
  pending # Write code here that turns the phrase above into concrete actions
end

require 'faker'

Dado('que {string} é a minha nova tarefa') do |nova_tarefa|
  @nova_tarefa = { nome: nova_tarefa, data: nil, tags: [] }
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
  expect(page).to have_content status_tarefa
end

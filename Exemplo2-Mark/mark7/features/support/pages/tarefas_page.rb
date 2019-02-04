class TarefasPage
  include Capybara::DSL

  def nova(tarefa)
    within('#add-task') do
      fill_in 'title', with: tarefa[:nome]
      fill_in 'dueDate', with: tarefa[:data]
      insere_tags(tarefa[:tags])
      click_button 'Cadastrar'
    end
  end

  def botao_novo
    find('button[id^=insert]').click
  end

  def ola
    find('#task-board h3')
  end

  private

  def insere_tags(tags)
    campo_tag = find('div[class*=tagsinput] input')
    tags.each do |t|
      campo_tag.set t[:tag]
      campo_tag.send_keys :tab
      sleep 0.05
    end
  end
end

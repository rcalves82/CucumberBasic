class TarefasPage
    include Capybara::DSL

    def ola
        find('#task-board h3')
    end
    
end
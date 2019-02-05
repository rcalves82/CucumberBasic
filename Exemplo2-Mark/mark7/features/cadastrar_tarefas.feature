#language:pt

Funcionalidade: Cadastrar tarefas
    Para que eu posssa organizar as minhas atividades
    Sendo um usuário cadastrado
    Posso cadastrar novas tarefas

    @login @nova_tarefa
    Cenario: Nova tarefa

        Dado que "Estudar Ruby" é a minha nova tarefa
        E devo finalizar esta tarefa até "01/11/2019"
        E além disso quero taguear esta tarefa com:
            | tag         |
            | ruby        |
            | capybara    |
            | leitura     |
            | video aulas |
        Quando eu faço o cadastro desta tarefa
        Então devo ver este cadastro na lista com o status "Em andamento"

     @login @nova_tarefa_dinamica
    Cenario: Nova tarefa dinâmica   

        Dado que "Estudar MongoDB" é a minha nova tarefa dinâmica
        E devo finalizar esta tarefa até "01/11/2019"
        E além disso quero taguear esta tarefa com:
            | tag         |
            | database    |
            | mongoDB     |
        Quando eu faço o cadastro desta tarefa
        Então devo ver este cadastro na lista com o status "Em andamento"
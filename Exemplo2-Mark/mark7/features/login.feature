#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas atividades
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu e-mail e minha senha

@logout
Cenário: Usuário autenticado

	Dado que estou na página de login
	Quando faço login com "eu@papito.io" e "123456"
	Então devo ver a mensagem "Olá, Fernando"

Esquema do Cenario: Tentativa de logar

	Dado que estou na página de login
	Quando faço login com "<email>" e "<senha>"
	Então devo ver a mensagem de alerta "<mensagem>"

	Exemplos: 
      | email               | senha   | mensagem                    |
      | eu@papito.io        | xpto123 | Senha inválida.             |
      | eu&gmail.com        | xpto123 | Email incorreto ou ausente. |
      |                     | xpto123 | Email incorreto ou ausente. |
      | eu@gmail.com        |         | Senha ausente.              |
      | rui.alves@gmail.com | xpto123 | Usuário não cadastrado.     |

Cenario: Bloqueia apos 6 tentativas

	Dado que estou na página de login
	E a quantidade máxima de login é de 5 tentativas
	Quando tento logar com "eu@papito.io" e "xpto123"
	Então devo ver a mensagem de alerta "Usuário bloqueado. Por favor aguarde 10 segundos, e tente novamente."
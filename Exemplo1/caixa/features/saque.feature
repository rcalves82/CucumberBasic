#language: pt

Funcionalidade: Saque no caixa eletrônico
    Sendo um cliente que é correntista do banco
    Posso sacar dinheiro
    Para poder comprar em lugares que não aceitam débito ou crédito,
        mesmo estando no século 21


Cenario: Saque

    Dado que eu tenho R$ 1000 de saldo na minha conta
    Quando faço um saque de R$ 200
    Então vejo a mensagem "Saque com sucesso."
    E minha conta deve ficar com saldo de R$ 800

Cenario: Cliente sem saldo

    Dado que eu tenho R$ 0 de saldo na minha conta
    Quando faço um saque de R$ 100
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E minha conta deve ficar com saldo de R$ 0


Cenario: Saque insufciente

    Dado que eu tenho R$ 500 de saldo na minha conta
    Quando faço um saque de R$ 510
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E minha conta deve ficar com saldo de R$ 500

Cenario: Limite por saque

    Dado que eu tenho R$ 1000 de saldo na minha conta
    Quando faço um saque de R$ 701
    Então vejo a mensagem "Limite máximo por saque é de R$ 700"
    E minha conta deve ficar com saldo de R$ 1000


    
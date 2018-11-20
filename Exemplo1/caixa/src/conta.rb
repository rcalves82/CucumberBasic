class Conta
    attr_accessor :saldo, :retorno

    def initialize(saldo)
        @saldo = saldo
    end

    # Limite máximo por saque é de R$ 700

    def saque(valor)

        if valor > @saldo
            @retorno = 'Saldo insuficiente para saque :('
        elsif valor > 700
            @retorno = 'Limite máximo por saque é de R$ 700'
        else
            @saldo -= valor
            @retorno = 'Saque com sucesso.'
        end
    end
end
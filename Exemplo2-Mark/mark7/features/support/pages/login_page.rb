
class LoginPage < SitePrism::Page
    set_url '/login'

    element :campo_email, 'input[placeholder="example@gmail.com"]'
    element :campo_senha, 'input[type=password]'
    element :botao_entrar, 'button[id*=btnLogin]'
    element :alerta, '.alert-login'

    def logar(email, senha)
        campo_email.set email
        campo_senha.set senha
        botao_entrar.click
    end
end 
class Navbar < SitePrism::Page
    element :menu_usuario, '.profile-address'
    element :link_sair, 'a[href$="logout"]'

    def sair
        menu_usuario.click
        link_sair.click
    end


end


After('@logout') do
    @nav = Navbar.new
    @nav.sair
end
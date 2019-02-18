# hooks.rb

Before do
  # @page = Pages.new
  # @component = Components.new
  @page = Pages.new
  @component = Components.new
end

Before('@login') do
  @page.login.load
  @page.login.logar('eu@papito.io', '123456')
end

After('@logout') do
  @component.nav.sair
  # expect(@page.login.estou_pagina?).to be true
end

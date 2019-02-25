# hooks.rb

Before do
  # @page = Pages.new
  # @component = Components.new
  @page = Pages.new
  @component = Components.new
end

# fazendo login
Before('@login') do
  @page.login.load
  @page.login.logar('eu@papito.io', '123456')
end

# fazendo logout
After('@logout') do
  @component.nav.sair
  # expect(@page.login.estou_pagina?).to be true
  sleep 3
end

# imprimir nome do cenario
After do |scenario|
  nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '').downcase! # => formatando nome do arquivo
  nome = nome.tr(' ', '_') # => definicao do nome do arquivo
  screenshot = "log/screenshots/#{nome}.png" # => Capybara tira o Sreenshot
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Evidência :)') # => Cucumber anexa o screenshots no relatoriio
end

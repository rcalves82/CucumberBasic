require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
  config.app_host = 'http://mark7.herokuapp.com'
  Capybara.page.driver.browser.manage.window.maximize
end

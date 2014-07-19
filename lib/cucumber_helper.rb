require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :selenium
Capybara.app_host = "http://localhost/wordpress/"
# Capybara.app_host = "http://localhost:3000"
Capybara.run_server = false
Capybara.default_wait_time = 5

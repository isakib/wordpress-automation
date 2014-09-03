require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :selenium
Capybara.app_host = "http://localhost/wordpress"
# Capybara.app_host = "https://www.google.as/?gws_rd=ssl"
Capybara.run_server = true
Capybara.default_wait_time = 5

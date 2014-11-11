require_relative '../../lib/cucumber_helper'

Given /^I am retriving with password "(.*)"$/ do |email|
  visit "/wp-login.php"
  fill_in "Username", :with => email + "email"
  click_on "Get New Password"
end




# Given /^I am giving different email "(.*)" $/ do |email_address|
#   # fill_in( "Username", :with => email_address )
#   fill_in( "Username", :with => email_address + "-test-passwd" )
#   click_button( "Log In" )
# end



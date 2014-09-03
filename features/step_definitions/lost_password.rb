require_relative '../../lib/cucumber_helper'

Given /^I am retriving with password "(.*)"$/ do |email|
  visit "/wp-login.php"
  fill_in "user_login", :with => email
  click_on "Get New Password"
end




# Given /^I am giving different email "(.*)" $/ do |email_address|
#   # fill_in( "Username", :with => email_address )
#   fill_in( "Username", :with => email_address + "-test-passwd" )
#   click_button( "Log In" )
# end


# When /"([\w[\d\w]+)" logs on through the logon page/ do |user_name|
#   visit(logon_path)
#   fill_in( "User Name", :with => user_name )
#   fill_in( "Password", :with => user_name + "-test-passwd" )
#   click_button( "Logon" )
# end
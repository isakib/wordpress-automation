# require_relative '../../lib/cucumber_helper'
#
# #single approach to login
# Given /^I am logged in with email "(.*)" and password "(.*)"$/ do |email, password|
#   step %Q{I am on the "/wp-login.php?" page}
#   step %Q{I fill in "Username" with "#{email}"}
#   step %Q{I fill in "Password" with "#{password}"}
#   step %Q{I click on "Log In"}
# end
#
# #
# # When /"([\w[\d\w]+)" logs on through the logon page/ do |user_name|
# #   visit(logon_path)
# #   fill_in( "User Name", :with => user_name )
# #   # fill_in( "Password", :with => user_name + "-test-passwd" )
# #   fill_in( "Password", :with => user_pass )
# #   click_button( "Log In" )
# # end
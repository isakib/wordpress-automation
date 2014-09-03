require_relative '../../lib/cucumber_helper'

# When /^(?:|I )go to (.+)?/ do |/wp-login.php?|
#   visit path_to("/wp-login.php?") page
# end

# Given /^I am logged in with email "(.*)" and password "(.*)"$/ do |email, password|
#   step %Q{I am on the "/wp-login.php?" page}
#   step %Q{I fill in "Username" with "#{email}"}
#   step %Q{I fill in "Password" with "#{password}"}
#   step %Q{I click on "Log In"}
# end
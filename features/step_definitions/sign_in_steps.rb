require_relative '../../lib/cucumber_helper'


Given /^I am logged in with email "(.*)" and password "(.*)"$/ do |email, password|
  step %Q{I am on the "/users/sign_in?locale=en" page}
  step %Q{I fill in "Email" with "#{email}"}
  step %Q{I fill in "Password" with "#{password}"}
  step %Q{I click on "Sign In"}
end

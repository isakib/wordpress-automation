require_relative '../../lib/cucumber_helper'

Given /^I am retriving with password "(.*)"$/ do |email|
  visit "/wp-login.php"
  fill_in "user_login", :with => email
  click_on "Get New Password"
end

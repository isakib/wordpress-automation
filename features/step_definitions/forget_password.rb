require_relative '../../lib/cucumber_helper'

Given /^I am retriving with password "(.*)"$/ do |email|
  visit "users/password/new?lan=en"
  fill_in "Email", :with => email
  click_on "Reset Password"
end

require_relative '../../lib/cucumber_helper'


Given /^I am on the "(.*)" page$/ do |page|
  visit page
end

Given /^I fill in "(.*)" with "(.*)"$/ do |selector, value|
  fill_in selector, :with => value
end

Given /^I click on "(.*)" link$/ do |selector|
  click_on selector
end

Given /^I click on "(.*)" button$/ do |selector|
  click_button selector
end

Given /^I select (.*) box is checked$/ do |checkbox|
  check(checkbox)
end

Then /^the "([^"]*)" checkbox should be checked$/ do |id|
  find_field(id)[:value].should eq "forever"
end

Given /^I should see "([^"]*)" on screen$/ do |text|
  expect(page).to have_content text
end


Then /^the failing exception should be nice$/ do
  expect(@error-message).to match %r(expected to find css \"id#.error-message")
end

Then /^I select "(.*)" from "(.*)" drop-down list/ do |value, selector|
  select value, :from => selector
  page.execute_script("$('[chosen-enabled]').trigger('liszt:updated').trigger('change')")
end

Then /^I should be on "(.*)" page$/ do |page|
  expect(current_path).to eq page
end

When /^I wait for (\d+) seconds?$/ do |secs|
  sleep secs.to_i
end

When /^I hover on "([^\"]*)"$/ do |link_text|
  page.execute_script %Q{ $('.jq-menu li.pull-down a:contains("#{link_text}")').trigger("mouseenter"); }
end

When /^I choose "(.+?)" from autocomplete list$/ do |text|
  find("[data-selected-text='#{text}']").click
end

#auto completion approach
Then /^I should see the following autocomplete options:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.raw.each do |row|
    locate(:xpath, "//a[text()='#{row[0]}']")
  end
end

When /^I click on the "([^"]*)" autocomplete option$/ do |link_text|
  # this should work in future versions but no in current stable
  # page.evaluate_script %Q{ $('.ui-menu-item a:contains("#{link_text}")').trigger("mouseenter").click(); }
  page.execute_script %Q{ $('//button[@type='button'').trigger.click(); }
end


#Generating new email address everytime I test

# Given /^Generating new email "(.*)" $/ do |email|
#   fill_in("Email", :with => Time.now.getutc + "email" )
# end


# Given /^I fill in "(.*)" with "(.*)" email $/ do |selector, value|
# #   fill_in selector, :with => Time.now.getutc
# # end
#
# When /^I check the favorite color count(?: for email address (.*))?$/ do |email|
#   email ||= "value"
#   puts 'Time.now.getutc ' + email
# end
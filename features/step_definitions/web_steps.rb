require_relative '../../lib/cucumber_helper'

Given /^I am on the "(.*)" page$/ do |page|
  visit page
end

Given /^I fill in "(.*)" with "(.*)"$/ do |selector, value|
  fill_in selector, :with => value
end

Given /^I click on "(.*)"$/ do |selector|
  click_on selector
end

Given /^I click on "(.*)" button$/ do |selector|
  click_button selector
end

#Given /^I select on "(.*)" checkbox$/ do |checkbox|
#  find(:xpath , '//*[@id="user_sign_up_terms"]').click
#  #find("input[type='checkbox']")
#end

#flaws
Given /^I should see on screen "(.*)"$/ do |selector|
  page.all('#p', :visible => true)
end

Given /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end


Then /^the failing exception should be nice$/ do
  expect(@error-message).to match %r(expected to find css \"id#.error-message")
end

## how to be ensured the value has checked? the system is passing but without verifing the data which is disabled
#Given /^I should see on screen "(.*)" with "(.*)" $/ do |selector, value|
#  page.all('#disabled', :with => value)
#end
#
#Then /^"([^"]*)" should be a disabled option for "([^"]*)"(?: within "([^\"]*)")?$/ do |value, field, selector|
#  with_scope(selector) do
#    field_labeled(field).find(:xpath, ".//option[text() = '#{value}'][@disabled]").should be_present
#  end
#end

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




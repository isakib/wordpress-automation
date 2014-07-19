require_relative '../../lib/cucumber_helper'

Then /^I can see "(.+)" notification(?: with "(.+)")?$/ do |notification_type, message|
  if message
    expect(find("div.toast-#{notification_type} div.toast-message")).to have_content(message)
  else
    expect(page).to have_selector("div.toast-#{notification_type}")
  end
end

Then /^I can see a notification(?: with "(.+)")?$/ do |message|
  expect(find("div.gritter-item")).to have_content(message)
end

require 'selenium-webdriver'

Given /^that I am on (.*)$/ do |url|
    visit url
end

When /^I fill in "([^\"]*)" found by "([^\"]*)" with "([^\"]*)"$/ do |value, type, keys|
  fill_in(value, :with => keys)
end

And /^click the "([^\"]*)" button$/ do |button|
  click_button(button)
end

Then /^"(.*)" should be mentioned in the results$/ do |item|
  title.should include(item)
end


require 'selenium-webdriver'

Given /^that I have gone to the Google page$/ do
  @browser = Selenium::WebDriver.for :chrome
  @browser.navigate.to 'http://www.google.com'
end

When /^I add "(.*)" to the search box$/ do |item|
  @browser.find_element(:name, 'q').send_keys(item)
end

And /^click the Search Button$/ do
  @browser.find_element(:name, 'btnK').click
end

Then /^"(.*)" should be mentioned in the results$/ do |item|
  @browser.title.should include(item)
end

And /^click the first link$/ do
  @browser.find_element(:class, 'r').click
  @browser.quit
end

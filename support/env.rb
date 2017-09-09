require "capybara"
require "capybara/cucumber"
require "rspec"
require "capybara/dsl"
require "selenium-webdriver"
require "capybara/rspec"

#include common function
include RSpec::Matchers

$timeout = 50
Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium_chrome
Capybara.run_server = false


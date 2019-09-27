# Environment to start the test

require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
require 'test/unit'

# Define what browser you want to use
browser = Selenium::WebDriver.for:chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 20)

# Define homepage_url where you want to run the test
$homepage_url = "http://automationpractice.com/"

$user_email = "pull.testcase@gmail.com"
$user_pw = "success"

Before do |scenario|
	@browser = browser
    @browser.manage.window.maximize
    @wait = wait
end

at_exit do
	browser.quit
end

# Method will either interrupt waiting when condition is truthy,
# or it will throw Timeout error after N seconds
def wait_until(timeout = DEFAULT_WAIT_TIME)
	Timeout.timeout(timeout) do
		sleep(0.1) until value = yield
		value
	end
end
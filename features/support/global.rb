Given(/^user access web page/) do
  @browser.navigate.to $homepage_url
end

Given(/^click button sign in on homepage/) do
  @browser.find_element(:class,'login').click
end
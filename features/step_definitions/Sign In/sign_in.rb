#This function for sign in with valid credential

When(/^user put validated account/) do
  input = @wait.until {
    element = @browser.find_element(id:"email")
    element if element.displayed?
}
input.send_keys $user_email

  input = @wait.until {
    element = @browser.find_element(id:"passwd")
    element if element.displayed?
}
input.send_keys $user_pw
end

When(/^user click button sign in/) do
  @browser.find_element(:id,'SubmitLogin').click
end

Then(/^user sign out/) do
  if element = @browser.find_element(class:"logout")
    element.displayed?
    element.click
  else
    screenshot_file = "_#{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png"
    @browser.save_screenshot ('\screenshot\failed'+ screenshot_file +'')
  end
end

#This function for sign in with invalid credential

When(/^user put (.*) into email field/) do |username|
  input = @wait.until {
    element = @browser.find_element(name:"email")
    element if element.displayed?
}
  input.clear
  input.send_keys (username)
end

And (/^user put (.*) into password field/) do |password|
  input = @wait.until {
    element = @browser.find_element(name:"passwd")
    element if element.displayed?
}
  input.clear
  input.send_keys (password)
end

Then (/^user see error message/) do
  input = @wait.until {
    element = @browser.find_element(:xpath,'//*[@id="center_column"]/div[1]/p')
      if element
        puts "success"
      else
        puts "failed"
      end
    element if element.displayed?
}
        puts "Test passed"
end

After do |scenario|
  if scenario.failed?
    screenshot_file = "_#{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png"
    @browser.save_screenshot ('\screenshot\failed'+ screenshot_file +'')
  end
end
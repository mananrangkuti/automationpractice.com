#This function for authentication with valid credential
  
  Then(/^user put validation email/) do
    input = @wait.until {
      element = @browser.find_element(id:"email_create")
      element if element.displayed?
    }
    input.send_keys $user_email
  end
  
  Then(/^user click button create an account/) do
    if element = @browser.find_element(:id,'SubmitCreate').click
      element.displayed?
      element.click
    else
      screenshot_file = "_#{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png"
      @browser.save_screenshot ('\screenshot\failed'+ screenshot_file +'')
    end
  end
  
  #This function for authentication with invalid credential
  
  When(/^user put (.*) into form email/) do |email|
    input = @wait.until {
      element = @browser.find_element(id:"email_create")
      element if element.displayed?
  }
    input.clear
    input.send_keys (email)
  end
  
  Then (/^user see alert message/) do
    input = @wait.until {
      element = @browser.find_element(:id,'create_account_error')
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
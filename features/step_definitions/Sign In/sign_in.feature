@sign-in-positive-and-negative
Feature: Sign In

@sign-in-positive
Scenario: success sign in
  Given user access web page
  When click button sign in on homepage
  And user put validated account
  And user click button sign in
  Then user sign out

@sign-in-negative
Scenario Outline: failed sign in
  Given user access web page
  When click button sign in on homepage
  And user put <username> into email field
  And user put <password> into password field
  And user click button sign in
  Then user see error message
  Examples:
			      |username                |password |
			      |popopo@popo.com         |success  |
            |popopo                  |success  | 
            |pull.testcase@gmail.com |failed   |
            |pull.testcase@gmail.com |         |
            |                        |success  |
            |pull.testcase@gmail.com |qqq456789101112131415161718192021222324252627282qqq|
            |12345678                |success  |
            |?---___---!             |success  | 
            |pull.testcase@gmail.com |12345678 |
            |pull.testcase@gmail.com |![],.--? |
            |                        |         |
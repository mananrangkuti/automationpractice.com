@authentication-positive-and-negative 
Feature: Authentication

@authentication-positive
Scenario: success create an account
  Given user access web page
  When click button sign in on homepage
  And user put validation email
  Then user click button create an account

@authentication-negative
Scenario Outline: failed create an account
  Given user access web page 
  When click button sign in on homepage
  And user put <email> into form email 
  And user click button create an account
  Then user see alert message
  Examples:
			      |email                   |
			      |popopo@popo.com         |
            |popopo                  |
            |12345678                |
            |?---___---!             |
            |$usa@gmail.....         |
            |                        |
Feature: Registration
As a registered user, I would like to register to system
                                                         Scenario: With valid information to complete portal registration
Scenario: With valid email and password

  Scenario :
  Given I am on the "https://www.facebook.com/" page
    And I fill in "email" with "youremail@gmail.com"
    And I fill in "pass" with "123456"
    And I click on "Log In" button


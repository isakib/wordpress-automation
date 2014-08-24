Feature: As User
  I would like to access with normal username and password information and with & Invalid information too
  I would like to take attemt with invalid username and password information  and with & Invalid information too
  I would like to access with Facebook Auth Login & Invalid too
  I would like to access with Twitter oAuth Login & Invalid too

  Scenario: With valid email and password
    Given I am on the "/users/sign_in?locale=en" page
    And I fill in "Email" with "isakib@gmail.com"
    And I fill in "Password" with "123456"
    And I click on "Sign in" button
    Then I can see a notification with "Signed in successfully."
    Then I am on the "/dashboard?locale=en" page
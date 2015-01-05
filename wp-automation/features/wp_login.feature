Feature: As User
  I would like to access with normal username and password information and with & Invalid information too
  I would like to take attemt with invalid username and password information  and with & Invalid information too
  I would like to access with Facebook Auth Login & Invalid too
  I would like to access with Twitter oAuth Login & Invalid too

  Scenario: With valid email and password

    Given I am on the "/wp-login.php" page
    And I fill in "Username" with "admin"
    And I fill in "Password" with "123456"
#    And I select "Remember Me" box is checked
    And the "Remember Me" checkbox should be checked
    And I wait for 5 seconds
    And I click on "Log In" button


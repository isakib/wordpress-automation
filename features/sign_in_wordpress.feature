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

  Scenario: With invalid email and password
    Given I am on the "/users/sign_in?locale=en" page
    And I fill in "Email" with "isakib21212112@gmail.com"
    And I fill in "Password" with "123212456"
    And I click on "Sign in" button
    Then I can see a notification with "Invalid email or password."

  Scenario: Login with Valid Facebook information
    Given I am on the "/users/sign_in?locale=en" page
    And I click on "Sign in with Facebook"
    And I wait for 7 seconds
    And I fill in "Email or Phone:" with "sakib@tasawr.com"
    And I fill in "Password:" with "759759@"
    And I click on "Log In" button
    And I can see a notification with "Signed in successfully."

   Scenario: Login attempt with Invalid Facebook information
     Given I am on the "/users/sign_in?locale=en" page
     And I click on "Sign in with Facebook"
     And I wait for 7 seconds
     And I fill in "Email or Phone:" with "sakib@tasawr.com"
     And I fill in "Password:" with "759759@invalid"
     And I click on "Log In" button
     And I should see on screen "Please re-enter your password"

  Scenario: Login with Twitter
    Given I am on the "http://dev.moteel.com/users/sign_in?locale=en" page
    And I click on "Sign in with Twitter"
    And I wait for 7 seconds
    And I fill in "Username or email" with "sakib@tasawr.com"
    And I fill in "Password" with "759759@"
    And I click on "Authorize app" button
    And I wait for 10 seconds
    And I can see a notification with "Signed in successfully."


  Scenario: Login attempt with Invalid Twitter information
    Given I am on the "http://dev.moteel.com/users/sign_in?locale=en" page
    And I click on "Sign in with Twitter"
    And I wait for 7 seconds
    And I fill in "Username or email" with "sakib@tasawr.com"
    And I fill in "Password" with "759759@invalid"
    And I click on "Authorize app" button
    And I wait for 10 seconds
    And I should see on screen "Oh dear, something has gone awry."
    And I should see on screen "Invalid user name or password."
    

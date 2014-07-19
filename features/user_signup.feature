Feature: Registration
  As a user,
  I would want to register to the system with all information.

  Scenario: With valid information to complete portal registration
    Given I am on the "/users/sign_up?locale=en" page
    And I fill in "Full Name" with "Simon Mark Fisher Ton"
    And I fill in "Address" with "H#37, R#37, B#84, Block - F"
    And I fill in "Email" with "sakib21333321w323www3@tasawr.com"
    And I fill in "user_password" with "123456"
    And I fill in "user_password_confirmation" with "123456"
    And I fill in "Mobile" with "+8801670023923"
    And I click on "Continue" button
    Then I can see a notification with "You have signed up successfully. However, we could not sign you in because your account is not yet activated."
    And I fill in "token" with "xxxx"
    And I click on "Continue" button
    Then I can see a notification with "Invalid Token"

  Scenario: Blank registration form submission to get validation notification
    Given I am on the "/users/sign_up?locale=en" page
    And I click on "Continue" button
    Then I can see a notification with "Password can't be blank"
    Then I can see a notification with "Address can't be blank"
    Then I can see a notification with "Mobile can't be blank"
    Then I can see a notification with "Full Name can't be blank"



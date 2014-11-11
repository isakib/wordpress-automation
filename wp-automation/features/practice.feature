Feature: Retrive password from system
     As user, I forgot my password and I would like to retrive password from wordpress.

  Scenario: Retring email with different random email input
    Given  I am on the "/wp-login.php?action=lostpassword" page
    And I am retriving with password "sakib@gmail.com"
    And I wait for 10 seconds
    And I click on "Get new Password" button
    And I should see "ERROR: Enter a username or e-mail address." on screen

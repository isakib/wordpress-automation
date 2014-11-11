Feature: Room view
  As a front desk manager, I would like to presense of context and check after
  deployment to be ensured, those are still existing fine.

  Scenario:
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "123456"
    And I wait for 2 seconds
    And I click on "Log In" button
    Then I am on the "/wp-admin/post-new.php" page
#    And I should see "Add New Post" after landing on page
    And I fill in "title" with "Dummy post at WordPress"
##    And I fill in "inside" with "Lorem Ipsum is simply dummy text of the printing"
    Then I click on "Publish"
    And I should see "Post published. View post" on screen
    And I click on "View post"
    And I should see "Dummy post at WordPress" on screen

##  Scenario:
###    Given I am on the "/wp-admin/post-new.php" page
#    And I click on "Preview"
#    And I wait for 5 seconds
#    And I should see "Dummy post at WordPress" after landing on page

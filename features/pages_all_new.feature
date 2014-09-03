Feature: Create a new page

  Background:
    Given I am logged in with email "admin" and password "123456"

  Scenario: Valid Inputs and Publish content
#    Given I am on the "/wp-login.php?" page
#    And I fill in "user_login" with "admin"
#    And I fill in "user_pass" with "123456"
#    And I wait for 2 seconds
#    And I click on "Log In" button
    Then I am on the "/wp-admin/post-new.php?post_type=page" page
#    And I should see "Add New Post" after landing on page
    And I fill in "title" with "Dummy post at WordPress"
##    And I fill in "inside" with "Lorem Ipsum is simply dummy text of the printing"
    Then I click on "Publish"
    And I should see "Page published. View page" on screen
    And I click on "View page"
    And I should see "Dummy post at WordPress" on screen


   Scenario: Valid inputs and Save Draft
#     Given I am on the "/wp-login.php?" page
#     And I fill in "user_login" with "admin"
#     And I fill in "user_pass" with "123456"
#     And I wait for 2 seconds
#     And I click on "Log In" button
     Then I am on the "/wp-admin/post-new.php?post_type=page" page
#    And I should see "Add New Post" after landing on page
     And I fill in "title" with "Dummy post at WordPress Draft"
##    And I fill in "inside" with "Lorem Ipsum is simply dummy text of the printing"
     Then I click on "Save Draft"
     And I should see "Page draft updated. Preview page" on screen
     And I click on "Preview page"
     And I wait for 2 seconds
     And I should see "Dummy post at WordPress Draft" on screen


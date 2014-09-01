Feature: Registration

  Scenario: With valid information to complete portal registration
    Given I am on the "http://moteel.tasawrtest.com" page
    And I select user_remember_me box is checked
    And I wait for 60 seconds


  Scenario: With valid information to complete portal registration
    Given I am on the "http://portal.tasawrtest.com/hotels/index?action=index&commit=Search&controller=hotels&locale=en&reservation%5Bcategory_id%5D=&reservation%5Bcheck_in%5D=20%2FJuly%2F2014&reservation%5Bcheck_out%5D=21%2FJuly%2F2014&reservation%5Bcity_id%5D=21506&reservation%5Bduration%5D=daily&reservation%5Bguests%5D=1&reservation%5Brooms%5D=1&reservation%5Bwhere%5D=Riyadh%2C+Saudi+Arabia&utf8=%E2%9C%93" page
    And I should see "SAR 450"
    And I click on "SAR 333450"
    And I wait for 30 seconds

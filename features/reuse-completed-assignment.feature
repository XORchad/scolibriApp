Feature: Reuse completed assignment
In order re-use an assignment for a different course
As a teacher
I want to edit an existing assignment and re-assign it

  Scenario:
    Given I am logged in as "teacher"
    And I am on menu “work>assignments>complete”
    And I see a list of all my complete assignments
    When I click on a completed assignment
    And I press "reuse"
    And I change the "definition" to "this is new defenition with 2000 words" 
    And I change the "course" to "Eco10b"
    And I change the "due date" to "12/04/2013"
    And I press "save"
    Then I should see a confirmation message "Eco10B has new homework"
    And students in "Eco10B" with settings "get assignment notifications" should get notification "new homework"
    And "Eco10b" calendar should have an assignment deadline on "12/04/2013"

Feature: Define school holidays
  In order to know when the school is closed
  As a school administrator
  I want to add the holidays dates to the calendar

Scenario:
  Given I am logged in as "school administrator"
  And I am on menu "calendar"
  When I click "create new event"
  And I choose "school holidays"
  And I fill in "type" with "christmas holidays"
  And I fill in "start date" with "20/12/2013"
  And I fill in "end date" with "05/01/2014"
  And I press "save"
  Then I should see the event in my calendar
  And All users related to school should see the event in their calendars

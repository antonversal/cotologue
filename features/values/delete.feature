@value_delete
Feature: Create
  In order to create values for search filters
  As a user
  I want to delete value

  Background: value exists
    Given value exists

  @javascript
  Scenario: Delete value
    Given value exists
    And I am on values page
    When I remove value
    Then I should be on values page
    And I should not have the value
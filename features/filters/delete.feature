@filter_delete
Feature: Create
  In order to build search filters
  As a user
  I want to delete filter

  Background: Section exists
    Given section exists

  @javascript
  Scenario: Delete filter
    Given filter exists
    And I am on filters page
    When I remove filter
    Then I should be on filters page
    And I should not have the filter
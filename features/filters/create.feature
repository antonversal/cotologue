@filter_create
Feature: Create
  In order to create search filters
  As a user
  I want to create new filter

  Background: Section exists
    Given section exists

  Scenario: Create new filter
    Given I am on new filter page
    When I fill filter details correctly
    Then I should be on filters page

  Scenario: Create new invalid filter
    Given I am on new filter page
    When I do not fill details
    And I should see filter errors
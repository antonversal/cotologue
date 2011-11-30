@filter_update
Feature: Update
  In order to build filters
  As a user
  I want to update filter
  Background:
    Given filter exists

  Scenario: Update filter
    Given I am on edit filter page
    When I fill filter details correctly
    Then I should be on filter page

  Scenario: Update filter as invalid
    Given I am on edit filter page
    When I erase filter details
    And I should see filter errors
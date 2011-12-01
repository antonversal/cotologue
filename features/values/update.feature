@value_update
Feature: Update
  In order to build values
  As a user
  I want to update value

  Background:
    Given value exists

  Scenario: Update value
    Given I am on edit value page
    When I fill value details correctly
    Then I should be on values page

  Scenario: Update value as invalid
    Given I am on edit value page
    When I erase value details
    And I should see value errors
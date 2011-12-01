@value_create
Feature: Create
  In order to create values for search filters
  As a user
  I want to create new value

  Background: Filter exists
    Given filter exists

  Scenario: Create new value
    Given I am on new value page
    When I fill value details correctly
    Then I should be on values page

  Scenario: Create new invalid value
    Given I am on new value page
    When I do not fill details
    And I should see value errors
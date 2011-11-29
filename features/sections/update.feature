@section_update
Feature: Update
  In order to build section structure
  As a user
  I want to update section
  Background:
    Given section exists

  Scenario: Update section
    Given I am on edit section page
    When I fill section details correctly
    Then I should be on sections page

  Scenario: Update section as invalid
    Given I am on edit section page
    When I erase section details
    And I should see section errors
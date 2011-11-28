@section_create
Feature: Create
  In order to build section structure
  As a user
  I want to create new section

  Scenario: Create new section
    Given I am on new section page
    When I fill section details correctly
    Then I should be on the index section page

  Scenario: Create new invalid section
    Given I am on new section page
    When I do not fill details
    And I should see section errors
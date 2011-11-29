@section_delete
Feature: Create
  In order to build section structure
  As a user
  I want to delete section

  @javascript
  Scenario: Delete section
    Given section exists
    And I am on sections page
    When I remove section
    Then I should be on sections page
    And I should not have the section
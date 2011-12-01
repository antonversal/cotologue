@product_create
Feature: Create
  In order to build products
  As a user
  I want to create new product

  Background: Section exists
    Given section exists

  Scenario: Create new product
    Given I am on new product page
    When I fill product details correctly
    Then I should be on product page

  Scenario: Create new invalid product
    Given I am on new product page
    When I do not fill details
    And I should see product errors

  @set_filter_values
  Scenario: Set filter values for product
    Given filters with values exists
    And I am on new product page
    When I set filter values for the product
    Then I should be on product page
    And I should see filter values
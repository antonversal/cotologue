@product_update
Feature: Update
  In order to build products
  As a user
  I want to update product
  Background:
    Given product exists

  Scenario: Update product
    Given I am on edit product page
    When I fill product details correctly
    Then I should be on product page

  Scenario: Update product as invalid
    Given I am on edit product page
    When I erase product details
    And I should see product errors

  @set_filter_values
  Scenario: Set filter values for product
    Given filters with values exists
    And I am on edit product page
    When I set filter values for the product
    And I update product
    Then I should be on product page
    And I should see filter values

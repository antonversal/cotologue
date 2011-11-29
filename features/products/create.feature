@product_create
Feature: Create
  In order to build products
  As a user
  I want to create new product

  Scenario: Create new product
    Given I am on new product page
    When I fill product details correctly
    Then I should be on product page

  Scenario: Create new invalid product
    Given I am on new product page
    When I do not fill details
    And I should see product errors
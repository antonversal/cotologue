@product_delete
Feature: Create
  In order to build products
  As a user
  I want to delete product

  @javascript
  Scenario: Delete product
    Given product exists
    And I am on products page
    When I remove product
    Then I should be on products page
    And I should not have the product
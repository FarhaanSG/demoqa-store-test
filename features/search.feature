@test
Feature: demoqa search

  Scenario: On typing the valid product detail it should show the searched item
    Given I am on the homepage
    When I type valid product details in the search bar
    Then I should get the valid results

  Scenario: On typing the invalid product details it should show an error message
    Given I am on the homepage
    When I type invalid product details in the search bar
    Then I should receive an error for not finding the product

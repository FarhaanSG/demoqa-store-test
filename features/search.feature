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

  Scenario: When clicking on the search box, any text already in it should be cleared
    Given I am on the homepage
    When I click on the search box
    Then the search box should be empty

  Scenario: When clicking on the search box, after a search, any text already in it should be cleared
    Given I am on the homepage
    When I type valid product details in the search bar
    When I click on the search box
    Then the search box should be empty

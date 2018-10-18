Feature: Testing the navigation bar

  Scenario: when hovering over the Product Category link, the product options should appear
    Given I am on the home page
    When I hover over the Product Category link
    Then a drop down box containing more options should appear

  Scenario: when looking at the navigation bar, there should be no links containing unnecessary characters
    Given I am on any page
    Then the links should only contain letters

  Scenario: all links should lead to a certain page or location
    Given I am on the any page
    Then all links should lead to a certain page or location

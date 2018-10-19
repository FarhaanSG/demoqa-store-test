Feature: Testing the navigation bar

  Scenario: when hovering over the Product Category link, the product options should appear
    Given I am on the home page
    When I hover over the Product Category link
    Then a drop down box containing more options should appear

  Scenario: when looking at the navigation bar, there should be no links containing unnecessary characters
    Given I am on the home page
    Then the links should only contain letters

  Scenario: all links should lead to a certain page or location
    Given I am on the home page
    When I hover over the Product Category link
    Then the Product Category link should lead to the Product Category page
    And the Accessories link should lead to the Accessories page
    And the iMacs link should lead to the iMacs page
    And the iPads link should lead to the iPads page
    And the iPhones link should lead to the iPhones page
    And the iPods link should lead to the iPods page
    And the MacBooks link should lead to the MacBooks page
    And the All Product link should lead to the All Product page

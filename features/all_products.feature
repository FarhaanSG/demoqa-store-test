@new
Feature: Testing the All Products page

    Scenario Outline: Clicking on product image
        Given I can access the All Product page
        And I can view the <product> product with the <id> id
        And <product> with <id> id has a price
        And <product> with <id> id has a description
        And <product> with <id> id has a title
        And <product> with <id> id has a star rating
        And <product> with <id> id has a buy button
        And <product> with <id> id has a facebook like button
        When I click on the <product> image
        Then <product> Image popup appears
    
    Examples:
    | product        | id                |
    | iPhone 5       | .product_view_32  |
    | Magic Mouse    | .product_view_40  |
    | iPod Nano Blue | .product_view_64  |
    
    Scenario Outline: Clicking on buy button
        Given I can access the All Product page
        And I can view the <product> product with the <id> id
        And <product> with <id> id has a buy button
        When I click on the <product> with <id> id buy button
        Then Basket count increases
    
    Examples:
    | product        | id                |
    | iPhone 5       | .product_view_32  |
    | Magic Mouse    | .product_view_40  |
    | iPod Nano Blue | .product_view_64  |
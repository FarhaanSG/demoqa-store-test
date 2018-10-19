Feature: Sign Up

    Scenario Outline: Inputting correct user details sends sign up email
        Given I access the home page
        And I access the account page via the <link> link with the id of <id> 
        And I access the register page
        And I input a valid new username
        And I input a valid new email
        When I click on the register button
        Then I am told that the account is already created

        Examples:
            | link | id             |
            | nav  | #account       |
            | foot | #menu-item-55  |
    
    Scenario: Inputting incorrect username details
        Given I access the home page
        And  I access the account page via the nav link with the id of #account
        And I access the register page  
        And I input a invalid new username
        And I input a valid new email
        When I click on the register button
        Then I get an error message with information explaining error
    
    Scenario: Inputting incorrect email details
        Given I access the home page
        And I access the account page via the foot link with the id of #menu-item-55
        And I access the register page 
        And I input a valid new username
        And I input a invalid new email
        When I click on the register button
        Then I get an error message with information explaining error
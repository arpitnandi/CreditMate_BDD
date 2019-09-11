#Author: arpit.n@testyantra.com

Feature: Validating deffrenet views for all User Types

Scenario Outline: First page view after login for all User Types
    Given User launches the application
    When Clicks on the 'Login As' menu
    And Clicks on <Interface> option
    Then The login window opens for <Interface> users
    When User enters <Email> and <Password> and clicks on 'Sign In' button
    Then The User's field is showing User name as <User Name>
    And User logs out and Clicks on CreditMate title area

 
    Examples: 
      | Interface         | UserType      | User Name           | Email                  | Password  |
      | CreditMate        | Admin         | Arpit Nandi         | arpit.n@testyantra.com | #Arpit@92 |
      | Collection Agency | Admin         | Admin               | arpit.n@testyantra.com | #Arpit@92 |
      | Collection Agency | Calling Agent | Arpit               | arpit_nandi@yahoo.in   | #Arpit@92 |
      | Collection Agency | SPOC          | Rahul Nandi         | rahulnandi92@gmail.com | #Arpit@92 |
      | Lender            | Admin         | My Rules Admin User | arpit_nandi@yahoo.in   | #Arpit@92 |
      | Lender            | Lender Admin  | My Rules Admin      | arpit.n@testyantra.com | #Arpit@92 |
      | Lender            | Lender RM     | My Rules RM         | arpitnandi1@gmail.com  | #Arpit@92 |
      | Lender            | SPOC          | My Rules RM         | rahulnandi92@gmail.com | #Arpit@92 |
      | Partner           | Cash_Drop     | Arpit Nandi         | arpit.n@testyantra.com | #Arpit@92 |

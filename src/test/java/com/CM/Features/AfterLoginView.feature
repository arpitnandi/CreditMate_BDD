#Author: arpit.n@testyantra.com

Feature: Validating deffrenet views for all User Types

Scenario Outline: First page view after login for all User Types
    Given User launches the application
    When login as <Interface> user
    Then The login window opens for <Interface> users
    When User do sign in with <Email> and <Password>
    Then User clicks on the button which displays <User Name>
    And User Sign Out navegates on to the Startup page

 
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

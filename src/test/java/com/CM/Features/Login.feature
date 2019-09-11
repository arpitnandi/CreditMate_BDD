#Author: arpit.n@testyantra.com

Feature: CreditMate Login functionality test

  Scenario Outline: Test Login for all user types with Valid credentials
    Given User launches the application
    When Clicks on the 'Login As' menu
    And Clicks on <Interface> option
    Then The login window opens for <Interface> users
    When User enters <Email> and <Password> and clicks on 'Sign In' button
    Then <User Name> displays on the 'User Name' button
    When Clicks on 'User Name' button
    And Clicks on 'Sign Out' option
    And Clicks on CreditMate title area
    Then User navegates on to the Startup page
    
  Scenario Outline: Test Login for all user types with Invalid credentials
    Given User launches the application
    When Clicks on the 'Login As' menu
    And Clicks on <Interface> option
    Then The login window opens for <Interface> users
    When Check Error messages for Invalid Email and Invalid Password
    | Email Invalid        | Password Invalid |
    | abc.xyz@uvw.rst      | gg12^%3b         |
    | 12345_@$%^@JDFFFJ.CX | 1234567890       |
    | dadadd@1234.567      | abcdefghij       |
    | %$@!^&*@abc.$%^      | aas^%&}@!)!<>(]  |
    |                      | hff^&&n325       |
    | &&123$_@1241.gfh     |                  |
    |                      |                  |
    | 123                  | &^)              |
    | fdffdfdfdfdfdfd      | 112              |
    | 343439434            | 5674756564       |
    | dhsuddnaauas         | dfjdsnfjnfds     |
    | )(^{}!@(@$!&%.^$!{   | 323)(&^%$@!{}~`? |
 
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

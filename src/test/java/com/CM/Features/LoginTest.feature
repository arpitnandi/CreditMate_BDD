#Author: arpit.n@testyantra.com

Feature: CreditMate Login functionality test


Scenario Outline: Test Login with Valid credentials for all User Types
    Given User launches the application
    When login as <Interface> user
    Then The login window opens for <UserType> users
    When User do sign in with <ValidEmail> and <ValidPassword>
    Then User clicks on the button which displays <User Name>
    And User gets sign out and navegates on to the Startup page


    Examples: 
      | Interface         | UserType      | User Name           | ValidEmail             | ValidPassword | InvalidEmail         | InvalidPassword  |  
      | CreditMate        | Admin         | Arpit Nandi         | arpit.n@testyantra.com | #Arpit@92     | abc.xyz@uvw.rst      | gg12^%3b         |
      | Collection Agency | Admin         | Admin               | arpit.n@testyantra.com | #Arpit@92     | 12345_@$%^@JDFFFJ.CX | 1234567890       |
      | Collection Agency | Calling Agent | Arpit               | arpit_nandi@yahoo.in   | #Arpit@92     | dadadd@1234.567      | abcdefghij       |
      | Collection Agency | SPOC          | Rahul Nandi         | rahulnandi92@gmail.com | #Arpit@92     | %$@!^&*@abc.$%^      | aas^%&}@!)!<>(]  |
      | Lender            | Admin         | My Rules Admin User | arpit_nandi@yahoo.in   | #Arpit@92     | )(^{}!@(@$!&%.^$!{   | hff^&&n325       |
      | Lender            | Lender Admin  | My Rules Admin      | arpit.n@testyantra.com | #Arpit@92     | &&123$_@1241.gfh     | 323)(&^%$@!{}~`? |
      | Lender            | Lender RM     | My Rules RM         | arpitnandi1@gmail.com  | #Arpit@92     | 123                  | &^)              |
      | Lender            | SPOC          | My Rules RM         | rahulnandi92@gmail.com | #Arpit@92     | fdffdfdfdfdfdfd      | 112              |
      | Partner           | Cash_Drop     | Arpit Nandi         | arpit.n@testyantra.com | #Arpit@92     | 343439434            | 5674756564       |   
   
                                                                                                   
Scenario Outline: Test Login with Invalid credentials for all User Types
    Given User launches the application
    When login as <Interface> user
    Then The login window opens for <UserType> users
    When User do sign in with <InvalidEmail> and <InvalidPassword>
    Then User should be displayed the error message on the same page
    

    Examples: 
      | Interface         | UserType      | User Name           | ValidEmail             | ValidPassword | InvalidEmail         | InvalidPassword  |  
      | CreditMate        | Admin         | Arpit Nandi         | arpit.n@testyantra.com | #Arpit@92     | abc.xyz@uvw.rst      | gg12^%3b         |
      | Collection Agency | Admin         | Admin               | arpit.n@testyantra.com | #Arpit@92     | 12345_@$%^@JDFFFJ.CX | 1234567890       |
      | Collection Agency | Calling Agent | Arpit               | arpit_nandi@yahoo.in   | #Arpit@92     | dadadd@1234.567      | abcdefghij       |
      | Collection Agency | SPOC          | Rahul Nandi         | rahulnandi92@gmail.com | #Arpit@92     | %$@!^&*@abc.$%^      | aas^%&}@!)!<>(]  |
      | Lender            | Admin         | My Rules Admin User | arpit_nandi@yahoo.in   | #Arpit@92     | )(^{}!@(@$!&%.^$!{   | hff^&&n325       |
      | Lender            | Lender Admin  | My Rules Admin      | arpit.n@testyantra.com | #Arpit@92     | &&123$_@1241.gfh     | 323)(&^%$@!{}~`? |
      | Lender            | Lender RM     | My Rules RM         | arpitnandi1@gmail.com  | #Arpit@92     | 123                  | &^)              |
      | Lender            | SPOC          | My Rules RM         | rahulnandi92@gmail.com | #Arpit@92     | fdffdfdfdfdfdfd      | 112              |
      | Partner           | Cash_Drop     | Arpit Nandi         | arpit.n@testyantra.com | #Arpit@92     | 343439434            | 5674756564       |
      
         
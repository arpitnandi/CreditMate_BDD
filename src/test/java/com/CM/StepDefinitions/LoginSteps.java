package com.CM.StepDefinitions;

import java.util.*;

import org.openqa.selenium.WebDriver;

import com.CM.Base.BaseClass;

import cucumber.api.java.en.*;

public class LoginSteps extends BaseClass
{
	List<String> Sessions = new ArrayList<String>();
	
	@Given("^User launches the application$")
	public void user_launches_the_application() throws Throwable 
	{
		WebDriver D = initDriver("chrome");
		
		launchSession(D, "https://www.creditmate.in/", 5, 30);
		
		Sessions.add( D.getWindowHandle() );
		
		System.out.println("User launches the application");
		
	}
	
	@When("^login as (.*) user$")
	public void login_as_CreditMate_user(String Interface) throws Throwable 
	{
		System.out.println("login as " + Interface + " user");
	}
	
	@Then("^The login window opens for (.*) users$")
	public void the_login_window_opens_for_CreditMate_users(String UserType) throws Throwable 
	{
		System.out.println("The login window opens for " + UserType + " users");
	}
	
	@When("^User do sign in with (.*) and (.*)$")
	public void user_do_sign_in_with_arpit_n_testyantra_com_and_Arpit(String Email, String Password) throws Throwable 
	{
		System.out.println("User do sign in with " + Email + " and " + Password );
	}
	
	@Then("^User clicks on the button which displays (.*)$")
	public void user_clicks_on_the_button_which_displays_Arpit_Nandi(String UserName) throws Throwable 
	{
		System.out.println("User clicks on the button which displays " + UserName );
	}
	
	@Then("^User gets sign out and navegates on to the Startup page$")
	public void user_Sign_Out_navegates_on_to_the_Startup_page() throws Throwable 
	{
		Iterator<String> I = Sessions.iterator() ;
		while( I.hasNext() )
			D.switchTo().window( I.next() ) ;
		
		D.navigate().refresh();
		
		D.close();
		
		System.out.println("User gets sign out and navegates on to the Startup page");
	}
	
	@Then("^User should be displayed the error message on the same page$")
	public void user_should_be_displayed_the_error_message_on_the_same_page() throws Throwable 
	{
		Iterator<String> I = Sessions.iterator() ;
		while( I.hasNext() )
			D.switchTo().window( I.next() ) ;
		
		D.navigate().refresh();
		
		D.close();
		
		System.out.println("User should be displayed the error message on the same page");
	}
}

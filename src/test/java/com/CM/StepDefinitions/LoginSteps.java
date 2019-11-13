package com.CM.StepDefinitions;

import cucumber.api.java.en.*;

public class LoginSteps 
{
	@Given("^User launches the application$")
	public void user_launches_the_application() throws Throwable 
	{
		System.out.println("Step 1");
	}
	
	@When("^login as (.*) user$")
	public void login_as_CreditMate_user(String Interface) throws Throwable 
	{
		System.out.println("Step 2");
	}
	
	@Then("^The login window opens for (.*) users$")
	public void the_login_window_opens_for_CreditMate_users(String UserType) throws Throwable 
	{
		System.out.println("Step 3");
	}
	
	@When("^User do sign in with (.*) and (.*)$")
	public void user_do_sign_in_with_arpit_n_testyantra_com_and_Arpit(String Email, String Password) throws Throwable 
	{
		System.out.println("Step 4");
	}
	
	@Then("^User clicks on the button which displays (.*)$")
	public void user_clicks_on_the_button_which_displays_Arpit_Nandi(String UserName) throws Throwable 
	{
		System.out.println("Step 5");
	}
	
	@Then("^User gets sign out and navegates on to the Startup page$")
	public void user_Sign_Out_navegates_on_to_the_Startup_page() throws Throwable 
	{
		System.out.println("Step 6");
	}
	
	@Then("^User should be displayed the error message on the same page$")
	public void user_should_be_displayed_the_error_message_on_the_same_page() throws Throwable 
	{
		System.out.println("Step 7");
	}
}

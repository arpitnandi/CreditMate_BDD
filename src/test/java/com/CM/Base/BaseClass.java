package com.CM.Base;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseClass 
{
	public String LanguageBinders = "C:\\Eclps_Projects\\Browser-Drivers\\";
	public WebDriver D = null ;
	public Actions A ;
	public WebDriverWait W ;
	
	public WebDriver initDriver(String Browser) 
	{
		String Driver = "";
		
		if( Browser.toLowerCase() == "chrome" )
			Driver = "chromedriver" ;
		if( Browser.toLowerCase() == "firefox" )
			Driver = "geckodriver" ;
		if( Browser.toLowerCase() == "ie" )
			Driver = "IEDriverserver" ;
		
		System.setProperty("wedriver."+Browser.toLowerCase()+".driver", LanguageBinders+Driver+".exe" );

		if( Browser.toLowerCase() == "chrome" )
			D = new ChromeDriver() ;
		if( Browser.toLowerCase() == "firefox" )
			D = new FirefoxDriver() ;
		if( Browser.toLowerCase() == "ie" )
			D = new InternetExplorerDriver(); 
		
		return D;
	}
	
	public void launchSession(String App, long IWait, long WWait ) 
	{
		D.get( App );
		D.manage().window().maximize();

		D.manage().timeouts().implicitlyWait(IWait, TimeUnit.SECONDS);
		
		W = new WebDriverWait( D, WWait );
		
		A = new Actions( D );
	}
	
	public void endSession() 
	{
		D.close();
	}
}

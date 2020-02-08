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
	public String LanguageBinders = "C:\\Users\\Arpit\\eclipse-workspace\\Language_Binders\\";
	public WebDriver D = null ;
	public Actions A ;
	public WebDriverWait W ;
	
	public WebDriver initDriver(String Browser) 
	{
		if( Browser.toLowerCase() == "chrome" )
		{
			System.setProperty("webdriver.chrome.driver", LanguageBinders + "chromedriver.exe" );
			D = new ChromeDriver() ;
		}
		if( Browser.toLowerCase() == "firefox" )
		{
			System.setProperty("webdriver.gecko.driver", LanguageBinders + "geckodriver.exe" );
			D = new FirefoxDriver() ;
		}
		if( Browser.toLowerCase() == "ie" )
		{
			System.setProperty("webdriver.ie.driver", LanguageBinders + "IEDriverServer.exe" );
			D = new InternetExplorerDriver();
		}
		
		return D;
	}
	
	public void launchSession(WebDriver Driver, String App, long IWait, long WWait ) 
	{
		D = Driver;
		
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

package com.CM.TestRunners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
features = "src\\test\\java\\com\\CM\\Features" ,
glue= {"com.CM.StepDefinitions"} ,
dryRun = false ,
monochrome = true ,
format = {"pretty","html:target/htmlReports"}
)

public class TestRunner01 {

}
package com.CM.TestRunner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
features = "src/test/java/com.CM.Features"
,glue= {"seleniumgluecode"}
,dryRun = true
,monochrome = true
,format = {"pretty","html:target/htmlReports"}
)

public class TestRunner_01 {

}
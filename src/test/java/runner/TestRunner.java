package runner;


import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

//testng
//import io.cucumber.testng.AbstractTestNGCucumberTests;
//import io.cucumber.testng.CucumberOptions;
 
@CucumberOptions(tags = "",features="src/test/resources/Features",glue ="com.stepdefinition",plugin= {"json:target/cucumber-report.json","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"})
public class TestRunner  extends AbstractTestNGCucumberTests {
//	@Override
//	extends AbstractTestNGCucumberTests
//	@DataProvider(parallel=true)
//	public Object[][] scenarios(){
//		return super.scenarios();
//	}
}

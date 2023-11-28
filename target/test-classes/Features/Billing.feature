Feature: Checking the billing Module

Background: 
    Given user enters into the Admin portal

@NotMandatory
Scenario: Missing the mandatory fields intentionally in new patient 

Given user enters into Billing
When user clicks the opd
And clicks the Add patient
And clicks the new patient
And enter some fields
Then Assert the error
And Logout1 

@MandatoryBill

Scenario: checking the new patient
Given user enters into Billing
When user clicks the opd
And clicks the Add patient
And clicks the new patient
And enter the Mandatory fields only
Then Assert the successfull message
And Logout1

@FullBilling
Scenario: Checking the mandatory fields for the new patient details

Given user enters into Billing
When user clicks the opd
And clicks the Add patient
And clicks the new patient
And enter the Mandatory fields only
Then enters the other OPD details
And checks the name
And Logout1

@BillingNotMandatory
Scenario: Intentionally failing in billig module

Given user enters into Billing
When user clicks the opd
And clicks the Add patient
And clicks the new patient
And Missing Mandatory fields only
Then Assert the intentional error
And Logout1




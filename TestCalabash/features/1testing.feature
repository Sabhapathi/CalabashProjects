Feature: Xora
  @need_restart
Scenario: Login
	#Given my app is running
	#Then I iterate with phonenum
	#Given I login with phno 9999900101 to envi "http://bridgeprod.etrace.com/bridge/DeviceBridgeServlet"
#Scenario: Reject EULA  
 #  Then I reject EULA
 #  Then I wait for 10 seconds    
#@need_restart
#Scenario: Accept EULA     
	#Given I login with phno 9999900101 to envi "http://bridgeprod.etrace.com/bridge/DeviceBridgeServlet"
   	Then I enter text "9999900101" into input field number
    Then I press button "Activate"
	Then I accept EULA
Scenario: Warning 
	Then I press button "Ok"
  	Then I should wait for "Ok" button to appear
	#Then I should wait 30 for Dialog "New Updates" to appear
  	Then I press button "Ok"
  Scenario: TimeCard actions
	Then I should see the element "Timesheets"
	Then I perform timesheet actions 500 times
#Scenario: Job Actions
#	Then I createAndperform job actions
#Scenario: Fill Trips if any
	#Then I perform Trips if available
#Scenario: Submit Form
#Then I fill form data from csv file
#	Then I submit 1 Forms

	



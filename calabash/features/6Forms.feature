  Feature: Xora
  
  
Scenario: Forms:Sync First
  
	Then I press image button number 1
        Then I wait for 2 seconds 	
        Then I press image button number 2
        Then I wait for 2 seconds 	
        Then I press image button number 3
        Then I wait for 2 seconds 
Scenario: Forms:FormList    
        Then I press "6 Forms"
        Then I see the text "AutomationForm"
          
Scenario: Forms:FormDetails      
        Then I press "AutomationForm"
        
Scenario: Forms:with default values
        Then I press "Submit"
        
Scenario: Forms: fill the form
        Then I press "AutomationForm"
        
Scenario: Forms: Form Text field
Then I enter "abcdef" into input field number 1 
Then I press "Next"


Scenario: Forms: Form Numeric field
Then I enter "12345" into input field number 2
Then I press "Next"

Scenario: Forms: Form Numeric field
Then I enter "00000" into input field number 3
Then I press "Next"

Scenario: Forms: Form Numeric precision 1
Then I enter "00.1" into input field number 4
Then I press "Next"

Scenario: Forms: Form Numeric precision 2
Then I enter "123.12" into input field number 5
Then I press "Next"

Scenario: Forms: Form Numeric precision 8
Then I enter "12312345.123456789" into input field number 5
Then I press "Next"

Scenario: Forms:Form Select List     
        Then I press "None"
        Then I press list item number 2
Then I press "Next"

Scenario: Forms:Form Multi Select
        Then I press "No option selected."
	Then I press "Ok"
Then I press "Next"	
	
Scenario: Forms: Form Media field
Then I press "Tap to capture one or more signatures"
Then I swipe left
Then I swipe right
Then I press "Save"

Then I press "Tap to capture one or more signatures"
Then I swipe left
Then I swipe right
Then I press "Save"

Then I press "Tap to capture one or more signatures"
Then I swipe left
Then I swipe right
Then I press "Save"
	
Then I toggle checkbox number 1

Scenario: Forms:SubmitForm
        Then I press "Submit"
        Then I go back
  
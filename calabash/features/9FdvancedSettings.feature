  Feature: Xora
  @need_restart
  Scenario: Advanced Settings:Sync first
  
    Then I press image button number 1
    Then I wait for 2 seconds 	
    Then I press image button number 2
    Then I wait for 2 seconds 	
    Then I press image button number 3
    Then I wait for 2 seconds 
    
    Then I wait for 60 seconds
    
    Then I press "Settings"	
    Then I press "Advanced Options"
    Then I enter "4321" into input field number 1
    Then I press "Submit"

Scenario: Advanced Settings:Log Options    
    Then I press "Log Options"
    Then I press "Done"

Scenario: Advanced Settings:Clear Logs    
    Then I press "Clear Log"
Scenario: Advanced Settings:Debug
    Then I press "Debug"
    Then I go back
Scenario: Advanced Settings: Cleear Record Store    
    Then I press "Clear Record Store"
    Then I press "No"
Scenario: Advanced Settings: Clear activation    
    Then I press "Clear Activation"
    Then I press "Yes"
     
    
    
  
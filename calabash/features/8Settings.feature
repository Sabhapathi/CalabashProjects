Feature: Xora
Scenario: Settings:Sync first
      
      Then I press image button number 1
          Then I wait for 2 seconds 	
          Then I press image button number 2
          Then I wait for 2 seconds 	
          Then I press image button number 3
    Then I wait for 2 seconds 
    
Scenario: Settings:Device Options
      Then I press "Settings"
Scenario: Settings:Send Current Location      
      Then I press "Send Current Location"
      Then I press "Yes"
Scenario: Settings:Send Logs to server      
      Then I press "Send Log to Server"
      Then I press "Yes"
      
      Then I go back
  
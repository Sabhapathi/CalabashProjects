
Feature: Xora

Scenario:Supervisor:Sync first
  
    Then I press image button number 1
    Then I wait for 2 seconds 	
    Then I press image button number 2
    Then I wait for 2 seconds 	
    Then I press image button number 3
    Then I wait for 2 seconds 


Scenario:Supervisor:Start Shift All    
    
    Then I press "Supervisor"	
    Then I press "Start Shift"
    Then I press "Ok"
    Then I wait for 1 seconds 
Scenario:Supervisor:Start Break All        
    Then I press "Start Break"
    Then I press "Ok"
    Then I wait for 1 seconds 
Scenario:Supervisor:End Break All    
    Then I press "End Break"
    Then I press "Ok"
    Then I wait for 1 seconds 
Scenario:Supervisor:End Shift All    
    Then I press "End Shift"
    Then I press "Ok"
    Then I wait for 1 seconds 

    
    Then I go back
    
    
  
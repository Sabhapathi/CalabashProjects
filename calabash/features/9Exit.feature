  Feature: Xora
  @need_shut,@port
  Scenario: Exit:Sync first
  
    Then I press image button number 1
    Then I wait for 2 seconds 	
    Then I press image button number 2
    Then I wait for 2 seconds 	
    Then I press image button number 3
    Then I wait for 2 seconds 
    
    Then I press image button number 2
    Then I press image button number 2
    Then I wait for 120 seconds
 @port
 Scenario: Exit   
    Then I press "Exit"
    Then I press "Yes"
    Then I wait for 120 seconds	    
    
  
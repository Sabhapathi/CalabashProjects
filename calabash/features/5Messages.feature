  Feature: Xora
  Scenario: Messages:Sync first
  
    Then I press image button number 1
    Then I wait for 2 seconds 	
    Then I press image button number 2
    Then I wait for 2 seconds 	
    Then I press image button number 3
    Then I wait for 2 seconds 
    
Scenario: Messages:Msg list    
    Then I press "3 Messages"
    Then I press "Msg from MC"
    Then I see the text "Msg desc from MC"
Scenario: Messages:Listen Msg    
    Then I press "Listen"
    Then I wait for 3 second
    Then I press "Stop"
    
           
Scenario: Messages:Delete Msg    
    Then I press "Delete"
    Then I press "No"
    
    Then I go back
    Then I go back
    
    
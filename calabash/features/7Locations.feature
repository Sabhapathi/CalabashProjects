  Feature: Xora
  Scenario: Locations:Sync first
  
        Then I press image button number 1
        Then I wait for 2 seconds 	
        Then I press image button number 2
        Then I wait for 2 seconds 	
        Then I press image button number 3
    Then I wait for 2 seconds 
Scenario: Locations:Location List    
    Then I press "1 Location"
    
    Then I see the text "Locations"
    Then I see the text "Location from MC"
   
    Then I press "Location from MC"
    
    Then I wait for 2 seconds
        
    Then I go back
    
    
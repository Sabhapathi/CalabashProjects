  Feature: Xora
  Scenario: Jobs: Sync first
  
    Then I press image button number 1
    Then I wait for 2 seconds 	
    Then I press image button number 2
    Then I wait for 2 seconds 	
    Then I press image button number 3
    Then I wait for 2 seconds 	
 
 Scenario: Jobs:Job List
    Then I press "1 Job"
    Then I see the text "New Job"
    Then I see the text "Create a new Job"
    Then I see the text "Job From MC"
Scenario: Jobs:CreateJob    
    Then I press "New Job"
    Then I enter "mjcjob" into input field number 2
    Then I press "Create Job"
    Then I press "Start Now"
Scenario: Jobs:Job Actions    
    Then I press "Start"
    Then I press "Hold"
    Then I press "End"
    Then I press "Submit"
            
    Then I go back
    
    
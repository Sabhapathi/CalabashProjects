Feature: Xora

@port
Scenario:TimeSheets  
      Then I press "Timesheets"
@port
Scenario:TimeSheets:Start Shift      
      Then I press "Start Shift"
@port    
Scenario:TimeSheets:Start Break      
      Then I press "Start Break"
@port    
Scenario:TimeSheets:End Break      
      Then I press "End Break"
@port
Scenario:TimeSheets:End Shift      
      Then I press "End Shift"
      
      Then I press image button number 3
      Then I wait for 10 seconds
      
      
      Then I go back
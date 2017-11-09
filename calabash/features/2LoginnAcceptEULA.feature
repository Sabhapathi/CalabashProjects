Feature: Xora

@port
 Scenario: Login:AcceptEULA
    
     Given my app is running
     Then I wait for 5 seconds
     And I wait for "Activate Device" to appear
              
  @port        
Scenario: Login: Provide correct phone number  

      Then I enter "9886121120" into input field number 1
      Then I press "Activate"
      Then I wait for 10 seconds
@port      
Scenario: Login: Verify EULA

      And I wait for "EULA" to appear
      Then I wait for 1 seconds
      Then I see the text "MISCELLANEOUS"
      Then I scroll down
      Then I scroll down
      Then I wait for 2 seconds
@port
Scenario: Login: Accept EULA      
      Then I press "I Agree"
@port
Scenario: Login: Verify Warning            
      And I wait for "Warning" to appear
      Then I see the text "Warning"
      Then I see the text "Xora"
      Then I press "Ok"
      Then I wait for 60 seconds
      And I wait for "Settings" to appear
      Then I press image button number 1
       Then I wait for 2 seconds
       Then I press image button number 2
       Then I wait for 2 seconds
       Then I press image button number 3
       Then I wait for 2 seconds
       
    
      
      
  
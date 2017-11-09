Feature: Xora
  @need_restart @port
  Scenario: Login:SetBridgeurl 
   
  Given my app is running
  Then I wait for 5 seconds
  And I wait for "Activate Device" to appear
  
  Then I enter "999999999" into input field number 1
      Then I press "Activate"
      
      Then I clear input field number 1
      Then I enter "http://bridgeprod.timetrack.xora.com/bridge/DeviceBridgeServlet" into input field number 1
      Then I wait for 3 seconds
      Then I press "Update"
      
      Then I wait for 3 seconds
      Then I clear input field number 1
      Then I wait for 3 seconds
      
    



  
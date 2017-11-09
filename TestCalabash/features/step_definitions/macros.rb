Given /^I login with phno (\d+) to envi "([^\"]*)"$/ do |phonenum,bridgeurl|
  macro 'I wait for 5 seconds'
  macro 'I wait for "Activate Device" to appear'
  macro 'I enter "999999999" into input field number 1'
  macro 'I press "Activate"'
  macro 'I clear input field number 1'
  macro %Q[I text "#{bridgeurl}" into input field number 1]
  macro 'I wait for 2 seconds'
  macro 'I press "Update"'
  macro 'I wait for 2 seconds'
  macro 'I clear input field number 1'
  macro 'I wait for 2 seconds'
  macro %Q[I enter "#{phonenum}" into input field number 1]
  macro 'I press "Activate"'
 end
 
 Then /^I accept EULA$/ do
 	macro 'I wait for 10 seconds'
 	macro 'I wait for "EULA" to appear'
 	macro 'I wait for 2 seconds'
 	macro 'I press "I Agree"'
 end
 
  Then /^I reject EULA$/ do
 	macro 'I wait for 10 seconds'
 	macro 'I wait for "EULA" to appear'
 	macro 'I wait for 2 seconds'
 	macro 'I press "I Decline"'
 end
 
 Then /^I accept Warning$/ do
 	
       macro 'I wait for "Warning" to appear'
       #macro 'I see the text "Warning"'
       #macro 'I see the text "driver"'
       
       count = query("button")
       if count.length==2
       	macro 'I press "I Agree"'
       	macro 'I should wait 30 for Dialog "New Updates" to appear'
       	macro 'I should see the Dialog "New Updates" and handle it'
       else
       	macro 'I press "Ok"'
       	macro 'I should wait 30 for Dialog "New Updates" to appear'
       	macro 'I should see the Dialog "New Updates" and handle it'
       	
       end       
end

Then /^I press "([^\"]*)" if popup available$/ do |button|
	checkPopup
     	clearPopup
end
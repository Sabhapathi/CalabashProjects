Then /^I createAndperform job actions$/ do
     macro 'I press image button number 1'
     macro 'I press image button number 2'
     macro 'I press image button number 3'
     macro 'I wait for 2 seconds' 	
     macro 'I touch menu icon "Jobs"'
	 macro 'I wait for 2 seconds'
     macro 'I press "New Job"'
	 macro 'I wait for 2 seconds' 	
     macro 'I select spinner item "Select Job Type"'
     macro 'I touch the "3 Action Jobs" text'
     macro 'I enter "mjcjob" into input field number 1'
     macro 'I press "Create Job"'
     macro 'I press "Start Now"'
     macro 'I press "Start"'
     macro 'I press "Hold"'
     macro 'I press "End"'
     macro 'I press "Submit"'
############################################################		
### EMAIL Jobs available??	################################
############################################################	
		findjobemail=element_exists("all * marked:'Skip'")
		if findjobemail == true	
			   macro 'I should see "Send" isnotEnabled'
               macro 'I wait for 2 seconds'
               macro 'I enter string using adb "sabhapathia@xora.com "'
               macro 'I wait for 2 seconds'
			   macro 'I should see "Send" Enabled'
			   macro 'I press "Send"'
			   macro 'I wait for 3 seconds'
        end
	 
     macro 'I go back'
 end   


Then /^I create (\d+) jobs$/ do |maxnum|

i=0
num=maxnum.to_i

while i<num do

    macro 'I press "New Job"'
    macro 'I select spinner item "Select Job Type"'
    macro 'I touch the "JobNameVisible" text'
    #macro 'I enter "Job For Trips" into input field number 1'
    macro 'I press "Create Job"'
    macro 'I press "Later"'
i += 1
end
end 
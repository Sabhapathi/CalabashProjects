Then /^I perform Trips if available$/ do 
	 macro 'I press image button number 1'
            
        findelement=element_exists("all * marked:'Trips'")
	    if findelement == true
	    macro 'I touch menu icon "Trips"'
  	    macro 'I wait for 5 seconds'
## Start Trip		
		macro 'I see the text "Start Trip"'
        macro 'I should see "Start" unchecked'
        macro 'I enter "123.2" into input field number 1'
        macro 'I should see "Start" checked'
        macro 'I toggle checkbox number 1'
        macro 'I select spinner by id "mileage_starttrip_category"'
        macro 'I touch the "Charitable" text'
        macro 'I wait for 1 seconds'
        macro 'I select spinner by id "mileage_starttrip_purpose"'
        macro 'I touch the "Delivery" text'
        macro 'I wait for 1 seconds'
        macro 'I enter "text on starttrip" into input field number 2'
        #touch("all * marked:'mileage_starttrip_startNotes'")
        #enter_eachchar_via_adb_into_fieldid("text on starttrip","mileage_starttrip_startNotes")
        macro 'I press "Start"'
        macro 'I wait for 2 seconds'
        	  
## End Trip
    
  	  macro 'I see the text "End Trip"'
		macro 'I enter "132.1" into input field number 1'
		macro 'I enter "123" into input field number 3'
		macro 'I enter "" into input field number 4'
		#touch("all * marked:'mileage_endtrip_endNotes'")
        #enter_eachchar_via_adb_into_fieldid(" extended on endtrip","mileage_endtrip_endNotes")
        macro 'I enter " extended on endtrip" into input field number 4'
    	macro 'I press "End"'
	    macro 'I wait for 2 seconds'
## Trip LIST	    
  	macro 'I see the text "Today"'
## TripDetails  
  	macro 'I press "Today"'
  	macro 'I wait for 2 seconds'
  	macro 'I see the text "Today"'
  	macro 'I see the text "Charitable"'
  	macro 'I see the text "Delivery"'
  	macro 'I see the text "text on starttrip extended on endtrip"'
  	macro 'I go back'
  	macro 'I press "Current Trip"'
	macro 'I go back'
	macro 'I go back'
	end	
end

###############Step to perform only Start or End trip
Then /^I fill Trips if available$/ do 

    macro 'I press image button number 1'
    findelement=element_exists("all * marked:'Trips'")
    
    if findelement == true
    	macro 'I touch menu icon "Trips"'
  	macro 'I wait for 5 seconds'
  	
  	foundstarttrip=element_exists("all * marked:'Start Trip'")
  	if foundstarttrip == true
        	macro 'I see the text "Start Trip"'
        	macro 'I should see "Start" unchecked'
        	macro 'I enter "123.2" into input field number 1'
        	macro 'I should see "Start" checked'
        	macro 'I toggle checkbox number 1'
        	macro 'I select spinner by id "mileage_starttrip_category"'
        	macro 'I touch the "Charitable" text'
        	macro 'I wait for 1 seconds'
        	macro 'I select spinner by id "mileage_starttrip_purpose"'
        	macro 'I touch the "Delivery" text'
        	macro 'I wait for 1 seconds'
        	macro 'I enter "text on starttrip" into input field number 2'
        	#touch("all * marked:'mileage_starttrip_startNotes'")
        	#enter_eachchar_via_adb_into_fieldid("text on starttrip","mileage_starttrip_startNotes")
        	macro 'I press "Start"'
        	macro 'I wait for 2 seconds'
        	macro 'I go back'
        end
        
        foundendtrip=element_exists("all * marked:'End Trip'")
        if foundendtrip == true
	        macro 'I see the text "End Trip"'
		macro 'I enter "132.1" into input field number 1'
		macro 'I enter "123" into input field number 3'
		macro 'I enter "" into input field number 4'
		#touch("all * marked:'mileage_endtrip_endNotes'")
        #enter_eachchar_via_adb_into_fieldid(" extended on endtrip","mileage_endtrip_endNotes")
        macro 'I enter " extended on endtrip" into input field number 4'
    	macro 'I press "End"'
	    macro 'I wait for 2 seconds'
	    macro 'I go back'
	    macro 'I go back'
        end
        
    end	
end  

####################Step to close the open Trip

Then /^I fill opentrips if available$/ do 

        macro 'I press image button number 1'
            
        findelement=element_exists("all * marked:'Trips'")
	    if findelement == true
	    macro 'I touch menu icon "Trips"'
  	    macro 'I wait for 5 seconds'
  			
  			
  	foundendtrip=element_exists("all * marked:'End Trip'")
        if foundendtrip == true
	    macro 'I see the text "End Trip"'
		macro 'I enter "132.1" into input field number 1'
		macro 'I enter "123" into input field number 3'
		macro 'I enter "" into input field number 4'
		#touch("all * marked:'mileage_endtrip_endNotes'")
        #enter_eachchar_via_adb_into_fieldid(" extended on endtrip","mileage_endtrip_endNotes")
        macro 'I enter " extended on endtrip" into input field number 4'
    	macro 'I press "End"'
	    macro 'I wait for 2 seconds'
	    macro 'I go back'
	    macro 'I go back'
         else
         macro 'I go back'
	 end
        
    end	
end 



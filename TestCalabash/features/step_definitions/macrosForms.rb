Then /^I submit (\d+) Forms$/ do |num|

    maxnum=num.to_i
  
    maxnum.times do
		macro 'I press image button number 1'
        macro 'I touch menu icon "Forms"'
        macro 'I see the text "AutomationForm"'
	    macro 'I press "AutomationForm"'
        macro 'I see the text "AutomationForm"'
        macro 'I enter "Text" into input field number 1'
        macro 'I enter "12345" into input field number 2'
        macro 'I press "Next"'        
		macro 'I enter "00000" into input field number 3'
        macro 'I press "Next"'
        macro 'I enter "00.1" into input field number 4'
        macro 'I press "Next"'
        macro 'I enter "123.12" into input field number 5'
        macro 'I press "Next"'
        macro 'I enter "12312345.123456789" into input field number 6'
        macro 'I press "Next"'
        macro 'I press "Next"'
        macro 'I press "Next"'
        macro 'I press "Next"'
        macro 'I press "Next"'
		macro 'I wait for 2 seconds'
	selsign = query("all * marked:'Tap to capture one or more signatures'", :getText)
	if selsign.empty?
			selsign = query("all * marked:'Tap to capture signatures'", :getText)
		if selsign.empty?	
			touch("ImageView index:1")
			macro 'I swipe left'
			macro 'I swipe right'
			macro 'I press "Save"'
	    else
			3.times do
		        macro 'I press "Tap to capture signatures"'
		       	macro 'I swipe left'
		       	macro 'I swipe right'
		       	macro 'I press "Save"'
	        end	
		end
	else
				3.times do
			        macro 'I press "Tap to capture one or more signatures"'
			       	macro 'I swipe left'
			       	macro 'I swipe right'
			       	macro 'I press "Save"'
				end
        end
        
        
	selpic = query("all * marked:'Tap to capture one or more pictures'", :getText)
	if selpic.empty?
		selpic = query("all * marked:'Tap to capture pictures'", :getText)
		if selpic.empty?
			touch("ImageView index:0")
			macro 'I wait for 10 seconds'
			macro 'I capture picture'
			macro 'I wait for 5 seconds'
			macro 'I save picture'
			macro 'I wait for 3 seconds'
		
		else
			3.times do
				macro 'I press "Tap to capture pictures"'
				macro 'I wait for 10 seconds'
				macro 'I capture picture'
				macro 'I wait for 5 seconds'
				macro 'I save picture'
				macro 'I wait for 5 seconds'
				macro 'I press "Ok"'
        	end
        end	
		
			else	
			3.times do
				macro 'I press "Tap to capture one or more pictures"'
				macro 'I wait for 10 seconds'
				macro 'I capture picture'
				macro 'I wait for 5 seconds'
				macro 'I save picture'
				macro 'I wait for 5 seconds'
				macro 'I press "Ok"'
			end
	
        end
        
        
       # macro 'I press "08-Oct-2012"'
       # macro 'I press "Set"'

         macro 'I press "11:45 PM"'
         macro 'I click on a image button with content description "Increment hour"'
         macro 'I click on a image button with content description "Increment hour"'
         macro 'I click on a image button with content description "Decrement hour"'
         macro 'I click on a image button with content description "Increment minute"'
         macro 'I click on a image button with content description "Increment minute"'
         macro 'I click on a image button with content description "Decrement minute"'
         macro 'I click on a button id "amPm"'
         macro 'I press "Set"'

        macro 'I toggle checkbox number 1'
        
        findurl=element_exists("all * marked:'FindWordOnline'")
        if findurl == true
			macro 'I press "FindWordOnline"'
			macro 'I wait for 20 seconds'
			macro 'I send key event using adb 4'
			macro 'I wait for 2 seconds'
		end
#      macro 'I press image button "Close icon X on Forms"'
#      macro 'I press "No"'
        
		macro 'I press "Submit"'
############################################################		
### EMAIL FORMS available??	################################
############################################################	
		findformemail=element_exists("all * marked:'Email Form'")
		if findformemail == true	
			   macro 'I should see "Send" isnotEnabled'
               macro 'I wait for 2 seconds'
               macro 'I enter string using adb "sabhapathia@xora.com "'
               macro 'I wait for 2 seconds'
			   macro 'I should see "Send" Enabled'
			   macro 'I press "Send"'
			   macro 'I wait for 3 seconds'
        end
   
		
		
# 	macro 'I press "Skip"'
        macro 'I go back'
 end       

end  



Then /^I fill form data from text file$/ do

		macro 'I press image button number 1'
        macro 'I touch menu icon "Forms"'
        macro 'I see the text "AutomationForm"'
	    macro 'I press "AutomationForm"'
        macro 'I see the text "AutomationForm"'

lines = []

begin
file = File.open("C:\\Users\\sabhap\\features\\inputdata\\formdata.txt", "r")

while(line = file.gets)
	lines << line
end

file.close
rescue => e
	puts e
end

		macro %Q[I enter "#{lines[0]}" into input field number 1]
        macro %Q[I enter "#{lines[1]}" into input field number 2]
        macro 'I press "Next"'        
		macro %Q[I enter "#{lines[2]}" into input field number 3]
        macro 'I press "Next"'
        macro %Q[I enter "#{lines[3]}" into input field number 4]
        macro 'I press "Next"'
        macro %Q[I enter "#{lines[4]}" into input field number 5]
        macro 'I press "Next"'
        macro %Q[I enter "#{lines[5]}" into input field number 6]
        macro 'I press "Next"'
		macro 'I press "Submit"'
 end
 
 
 Then /^I fill form data from csv file$/ do
		macro 'I press image button number 1'
        macro 'I touch menu icon "Forms"'
        macro 'I see the text "AutomationForm"'
	    
		
lines = []

begin
file = File.open("C:\\Users\\sabhap\\features\\inputdata\\sample_csv.csv", "r")

users =[]
x=0
while(line = file.gets)
	arr = line.split(',')
		#users.push({ Text: arr[0],Number: arr[1],Odometer: arr[2],numpre1: arr[3],numpre2: arr[4],numpre8: arr[5],Money: arr[6]})
	if x > 0
		macro 'I press "AutomationForm"'
        macro 'I see the text "AutomationForm"'
		macro %Q[I enter "#{arr[0]}" into input field number 1]
		macro 'I press "Next"' 
        macro %Q[I enter "#{arr[1]}" into input field number 2]
        macro 'I press "Next"'        
		macro %Q[I enter "#{arr[2]}" into input field number 3]
        macro 'I press "Next"'
        macro %Q[I enter "#{arr[3]}" into input field number 4]
        macro 'I press "Next"'
        macro %Q[I enter "#{arr[4]}" into input field number 5]
        macro 'I press "Next"'
        macro %Q[I enter "#{arr[5]}" into input field number 6]
        macro 'I press "Next"'
		macro 'I press "Submit"'
	end	
x = x+1
end

file.close
rescue => e
	puts e
end

		
 end
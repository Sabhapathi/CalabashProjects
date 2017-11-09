
Then /^I perform timesheet actions (\d+) times$/ do |num|

      macro 'I touch menu icon "Timesheets"'
      maxnum=num.to_i
      maxnum.times do
            macro 'I press "Start Shift"'
            macro 'I press "Start Break"'
            macro 'I press "End Break"'
            macro 'I press "End Shift"'
            macro 'I press "No"'
      end


	end	  
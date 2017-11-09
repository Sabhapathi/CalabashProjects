Then /^I iterate with phonenum$/ do

lines = []

begin
file = File.open("C:\\Users\\sabhap\\features\\inputdata\\sample.txt", "r")

while(line = file.gets)
	lines << line
end

file.close
rescue => e
	puts e
end

lines.each { |l| 
macro %Q[I enter "#{l}" into input field number 1]
macro 'I press "Activate"'
 }


end





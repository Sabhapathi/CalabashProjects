Then /^I select spinner by id "([^"]*)"$/ do |spinnerid|
  touch("spinner id:'#{spinnerid}'")
  
end

Then /^I select spinner item (.*)$/ do |action|
  touch("spinner")
end

Then /^I enter text "([^\"]*)" into input field number$/ do |text|
  touch("edittext")
  keyboard_enter_text("#{text}")
end


Then /^I click on a button id "([^"]*)"$/ do |buttonid|
  touch("button id:'#{buttonid}'")
end

Then /^I press image button id "([^"]*)"$/ do |imagebuttonid|
  touch("ImageButton id:'#{imagebuttonid}'")
end


Then /^I press button "([^"]*)"$/ do |arg|
  touch("button", marked:"#{arg}")
end


Then /^I should see "([^\"]*)" (un)?checked$/ do |label, un|
  sel = query("button marked:'#{label}'", :isSelected)[0]
  if un.nil?
    screenshot_and_raise "Expected check button checked" if sel == '0'
  else
    screenshot_and_raise "Expected check button unchecked" if sel == '1'
  end
end

Then /^I should see "([^\"]*)" (isnot)?Enabled$/ do |label, isnot|
  sel = query("button marked:'#{label}'", :isEnabled)[0]
  if isnot.nil?
    screenshot_and_raise "Expected Button to be Enabled" if sel == '0'
  else
    screenshot_and_raise "Expected Button to be disabled" if sel == '1'
  end
end

Then /^I click on a image button with content description "([^"]*)"$/ do |imagecontent|
  touch("ImageButton contentDescription:'#{imagecontent}'")
end


Then /^I touch menu icon "([^\"]*)"$/ do |arg|
  touchMenuIcon(arg)
end





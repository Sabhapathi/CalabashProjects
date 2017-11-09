
Then /^I should wait for "([^"]*)" button to appear$/ do |text|
  wait_for(:timeout => 5) { element_exists("button marked:'#{text}'") }
end

Then /^I should see the element "([^"]*)"$/ do |text|
  wait_for_elements_exist( "* marked:'#{text}'", :timeout => 10)
end


Then /^I should see the Dialog "([^"]*)" and handle it$/ do |text|
  res = element_exists( "DialogTitle text:'#{text}'" )
  if not res
    screenshot_and_raise "Expected a Pop-up to be visible"
    else
    touch("button text:'Ok'")
  end
end

Then /^I should not see the Dialog "([^"]*)"$/ do |arg|
  res = element_exists( "DialogTitle" )
  if res
    screenshot_and_raise "Expected a Pop-up not to be visible."
  else
    touch("button text:'Ok'")
  end
end

Then /^I should see the Dialog with Title "([^"]*)"$/ do |arg|
  res = element_exists( "DialogTitle" )
  if res
    screenshot_and_raise "Expected a Pop-up to be visible."
    end
end


Then /^I see the Dialog "([^"]*)" and dismiss it$/ do |text|
  res = element_exists( "DialogTitle text:'#{text}'" )
  if res
    touch("button text:'Ok'")
  end
end

Then /^I see the message "([^"]*)" and dismiss it$/ do |text|
  res = element_exists( "TextView text:'#{text}'" )
  if res
    touch("button text:'Ok'")
  end
end

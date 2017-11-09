Then /^I select multiselect "([^"]*)"$/ do |arg|

  touch("button text:'No option selected.'")
  b=query("CheckedTextView id:'text1'",:text)
  performAction("click_on_text", b[0])
  performAction("click_on_text", b[1])
  performAction("click_on_text", b[2])
end



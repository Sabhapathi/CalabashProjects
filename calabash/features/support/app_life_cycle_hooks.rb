require 'calabash-android/management/adb'
require 'calabash-android/operations'


Before ('@need_restart') do |scenario|
   start_test_server_in_background
end


After ('@need_shut') do |scenario|
  if scenario.failed?
    screenshot_embed
  end
   shutdown_test_server
end

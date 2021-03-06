
def iteratephonenum()
require 'rubyXL' # Assuming rubygems is already required
workbook = RubyXL::Parser.parse("C:\\Users\\sabhap\\rubyworkspace\\simple.xls")
worksheet = workbook[0]
cell=worksheet.sheet_data[0][0]
touch("EditText")
%x(adb shell input text #{cell})
## macro %Q[I enter "#{cell}" into input field number 1]
end

 
def checkTextOnScreen(text)

  clearPopup()
	
  return true if ( query("all * marked:'#{text}'").count > 0)
  return false
end

def touchText(text)

  if ( query("all * marked:'#{text}'").count > 0)
    touch("all * marked:'#{text}'") 
    return true
  end
	
  return false
end

def touchTextpart(text)
	
  if text == "pictures"
    return true if ( query("all *").find_all{ |item| touch(item) if item['text'] =~ /\d*[ ]?pictures?/ }.count > 0)	
  elsif text == "signatures"
    return true if ( query("all *").find_all{ |item| touch(item) if item['text'] =~ /\d*[ ]?signatures?/ }.count > 0)
  end
  return false
end


def touchtextviewbyid(textviewid)
      touch("TextView id:'#{textviewid}'") 
end



def checkPopup()

  return true if ( query('dialogtitle').count > 0)
  return false
end

def clearPopup()

  if checkPopup()
    touch(query('button')) if(query('button').count > 0)
    return true
  end
  return false	
end



def touchMenuIcon(argument)

  if argument == "Jobs"
    return true if ( query("all *").find_all{ |item| touch(item) if item['text'] =~ /\d*[ ]?Job[s]?/ }.count > 0)
  elsif argument == "Messages"
    return true if ( query("all *").find_all{ |item| touch(item) if item['text'] =~ /\d*[ ]?Message[s]?/ }.count > 0)
  elsif argument == "Forms"
    return true if ( query("all *").find_all{ |item| touch(item) if item['text'] =~ /\d*[ ]?Form[s]?/ }.count > 0)
  elsif argument == "Locations"
    return true if ( query("all *").find_all{ |item| touch(item) if item['text'] =~ /\d*[ ]?Location[s]?/ }.count > 0)
  else
    return true if ( touch("all * marked:'#{argument}'") )
  end
  return false
  
end


def send_keyevent_via_adb(keyevt) 
     %x(adb shell input keyevent #{keyevt})
end


def enter_text_via_adb(text)
    %x(adb shell input text #{text})
end

def enter_eachchar_via_adb(x)
	x.each_char do |b|	
    %x(adb shell input text #{b})
        sel = query("EmailContactTextView index:0", :isFocused)[0]
      	if sel==false
        touch("EmailContactTextView index:0")
	end
    end	
end


def enter_eachchar_via_adb_into_fieldid(x,fieldid)
	x.each_char do |b|	
    %x(adb shell input text #{b})
        sel = query("all * marked:'#{fieldid}'", :isFocused)[0]
        if sel==false
        touch("all * marked:'mileage_endtrip_endNotes'")
	end
    end	
end

def turn_airplanmode

%x(adb shell am start -a android.settings.AIRPLANE_MODE_SETTINGS)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 22)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 4)
end

def turn_locationservices_on

%x(adb shell am start -a android.settings.LOCATION_SOURCE_SETTINGS)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 20)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 20)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 22)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 4)
end

def turn_locationservices_off

%x(adb shell am start -a android.settings.LOCATION_SOURCE_SETTINGS)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 20)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 20)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 4)
end

def enable_wifi
%x(adb shell am start -a android.settings.SETTINGS)
%x(adb shell input keyevent 20)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 4)
%x(adb shell input keyevent 4)
end

def disable_wifi
%x(adb shell am start -a android.settings.SETTINGS)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 19)
%x(adb shell input keyevent 23)
%x(adb shell input keyevent 4)
%x(adb shell input keyevent 4)
end

def capture_pic
%x(adb shell input keyevent 27)
end


def save_pic
%x(adb shell input keyevent 22)
%x(adb shell input keyevent 66)
end


def install_newapp(apkname)
%x(adb install -r #{apkname})
sleep 10
end



    
 
# FileUtils.cd "C:\\Users\\sabhap\\features\\step_definitions"
#FileUtils.cd "C:\\Users\\Devicelab\\features\\step_definitions"
# load 'libxora.rb'
   
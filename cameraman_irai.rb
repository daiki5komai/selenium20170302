require 'rubygems'
require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :chrome

dt = Date.today
adt = dt >> 1
aadt = adt >> 1
puts(dt)
puts(adt)

wd.get "https://stg.lookme-e.com/komai1/admin"
wd.find_element(:id, "password").click
wd.find_element(:id, "password").clear
wd.find_element(:id, "password").send_keys "1234"
wd.find_element(:name, "submit").click
sleep 1
wd.find_element(:link_text, "カメラマン撮影依頼").click
sleep 1
wd.find_element(:css, "input.btn.btn-primary").click
sleep 1
wd.find_element(:id, "shooting_contact_person").click
wd.find_element(:id, "shooting_contact_person").clear
wd.find_element(:id, "shooting_contact_person").send_keys "#{dt}"
wd.find_element(:id, "shooting_event_name").click
wd.find_element(:id, "shooting_event_name").clear
wd.find_element(:id, "shooting_event_name").send_keys "#{dt}"
sleep 1
wd.find_element(:css, "label.checkbox.inline").click
sleep 1
if not wd.find_element(:id, "chkbox_group_168").selected?
    wd.find_element(:id, "chkbox_group_168").click
end
sleep 1
wd.find_element(:css, "label.radio.inline").click
sleep 1
if not wd.find_element(:id, "shooting_at_school_true").selected?
    wd.find_element(:id, "shooting_at_school_true").click
end
sleep 1
wd.find_element(:id, "shooting_date").send_keys "#{aadt}"
#Dateクラス使ってわちゃわちゃする
sleep 1
wd.find_element(:link_text, "1").click
sleep 1
if not wd.find_element(:xpath, "//select[@id='shooting_end_time_4i']//option[11]").selected?
    wd.find_element(:xpath, "//select[@id='shooting_end_time_4i']//option[11]").click
end
sleep 1
#wd.find_element(:id, "shooting_event_size").click
#wd.find_element(:id, "shooting_event_size").clear
wd.find_element(:id, "shooting_event_size").send_keys "222"
sleep 1
if not wd.find_element(:id, "shooting_parents_attendance_true").selected?
    wd.find_element(:id, "shooting_parents_attendance_true").click
end
sleep 1
wd.find_element(:xpath, "//form[@id='new_shooting']/div[13]/div/label[1]").click
sleep 1
if not wd.find_element(:id, "shooting_bad_weather_case_choice_go").selected?
    wd.find_element(:id, "shooting_bad_weather_case_choice_go").click
end
sleep 1
if not wd.find_element(:id, "shooting_parking_lot_true").selected?
    wd.find_element(:id, "shooting_parking_lot_true").click
end
sleep 1
wd.find_element(:id, "shooting_note_from_organization").click
wd.find_element(:id, "shooting_note_from_organization").clear
wd.find_element(:id, "shooting_note_from_organization").send_keys "#{dt}"
wd.find_element(:xpath, "//form[@id='new_shooting']/div[16]/div/label[1]").click
if not wd.find_element(:id, "shooting_caption_true").selected?
    wd.find_element(:id, "shooting_caption_true").click
end
wd.find_element(:id, "shooting_caption_msg1").click
wd.find_element(:id, "shooting_caption_msg1").clear
wd.find_element(:id, "shooting_caption_msg1").send_keys "#{dt}"
wd.find_element(:id, "shooting_caption_msg2").click
wd.find_element(:id, "shooting_caption_msg2").clear
wd.find_element(:id, "shooting_caption_msg2").send_keys "二行目#{dt}"
sleep 1
wd.find_element(:name, "commit").click
sleep 1
wd.quit

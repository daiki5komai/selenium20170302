require 'rubygems'
require 'date'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :chrome

dt = Date.today
adt = dt >> 1
puts dt
puts adt

wd.get "https://stg.lookme-e.com/komai1/admin"
wd.manage().window().maximize();#window_max_size1
sleep 1
wd.find_element(:id, "password").click
wd.find_element(:id, "password").clear
wd.find_element(:id, "password").send_keys "1234"
wd.find_element(:name, "submit").click
sleep 1
wd.find_element(:link_text, "アップロード・販売").click
sleep 2
wd.find_element(:name, "public-status-1378").click
wd.find_element(:name, "public-status-1377").click
wd.find_element(:name, "public-status-1342").click
#wd.find_element(:name, "public-status-1623").click
wd.find_element(:name, "public-status-1670").click
wd.find_element(:name, "public-status-1706").click
wd.find_element(:name, "public-status-1704").click
wd.find_element(:name, "public-status-1820").click
wd.find_element(:name, "public-status-1819").click
sleep 2
wd.find_element(:link_text, "アップロード・販売").click
#wd.find_element(:xpath, "//div[3]/div[4]/div[1]/a[1]").click
sleep 1
wd.find_element(:link_text, "販売設定画面へ").click
sleep 2
wd.find_element(:link_text, "新規登録").click
sleep 1
wd.find_element(:id, "sales_management_title").click
wd.find_element(:id, "sales_management_title").clear
wd.find_element(:id, "sales_management_title").send_keys "自動登録#{dt}"
sleep 1
wd.find_element(:id, "sales_management_sales_start_date").click
wd.find_element(:id, "sales_management_sales_start_date").clear
wd.find_element(:id, "sales_management_sales_start_date").send_keys "#{dt}"
sleep 1
wd.find_element(:id, "sales_management_sales_end_date").click
wd.find_element(:id, "sales_management_sales_end_date").clear
wd.find_element(:id, "sales_management_sales_end_date").send_keys "#{adt}"
sleep 1

wd.find_element(:css, "label.checkbox").click
if not wd.find_element(:id, "check_price").selected?
    wd.find_element(:id, "check_price").click
end
wd.find_element(:xpath, "//label[@for='check_event_status']").click
if not wd.find_element(:id, "check_event_status").selected?
    #wd.find_element(:id, "check_event_status").click
end
wd.find_element(:id, "submit_btn").click
sleep 2
puts "設定完了"
#wd.find_element(:xpath, "//div[@class='ui-dialog-buttonset']//button[.='はい']").click
sleep 2
wd.quit

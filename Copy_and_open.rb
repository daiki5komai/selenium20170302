require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :chrome

wd.get "https://stg.lookme-e.com/komai1/admin"
sleep 1
wd.find_element(:id, "password").click
wd.find_element(:id, "password").clear
wd.find_element(:id, "password").send_keys "1234"
wd.find_element(:name, "submit").click
sleep 1
wd.find_element(:link_text, "アップロード・販売").click
sleep 1
wd.find_element(:name, "public-status-1623").click
sleep 1
wd.find_element(:xpath, "//div[3]/div[7]/form/table/tbody/tr[7]/td[10]/a[1]").click
sleep 1
wd.find_element(:css, "label").click
sleep 1
if not wd.find_element(:id, "ckbox190").selected?
    wd.find_element(:id, "ckbox190").click
end
sleep 1
wd.find_element(:xpath, "//div[@class='update_event']/form/div[2]/div[2]/label[2]").click
if not wd.find_element(:id, "ckbox169").selected?
    wd.find_element(:id, "ckbox169").click
end
sleep 1
wd.find_element(:name, "commit").click
sleep 1
wd.find_element(:xpath, "//div[3]/div[7]/form/table/tbody/tr[7]/td[7]/button[2]").click
sleep 1
puts "コピー完了"
wd.quit

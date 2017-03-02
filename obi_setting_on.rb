require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :chrome

wd.get "https://stg.lookme-e.com/sys/users/login"
wd.find_element(:name, "sys_user_uid").click
wd.find_element(:name, "sys_user_uid").clear
wd.find_element(:name, "sys_user_uid").send_keys "jigyouop"
wd.find_element(:name, "password").click
wd.find_element(:name, "password").clear
wd.find_element(:name, "password").send_keys "FSBu2gww"
wd.find_element(:xpath, "//form[@class='form-signin']//button[.='Sign in']").click
sleep 1
wd.find_element(:link_text, "園/教室アカウント管理").click
sleep 1
wd.find_element(:xpath, "//div[@id='content']/table/tbody/tr[37]/td[10]/a").click
sleep 1
#if wd.find_element(:id, "organization_caption_logo").selected?#選択解除
#    wd.find_element(:id, "organization_caption_logo").click
#end
#if wd.find_element(:id, "organization_caption_logo_teacher").selected?#選択解除
#    wd.find_element(:id, "organization_caption_logo_teacher").click
#end
if not wd.find_element(:id, "organization_caption_logo").selected?#選択
    wd.find_element(:id, "organization_caption_logo").click
end
sleep 1
if not wd.find_element(:id, "organization_caption_logo_teacher").selected?#選択
    wd.find_element(:id, "organization_caption_logo_teacher").click
end
sleep 1
wd.find_element(:name, "commit").click
sleep 1
wd.quit

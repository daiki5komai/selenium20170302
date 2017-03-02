require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :chrome

dt = Date.today
puts(dt)

wd.get "https://stg.lookme-e.com/komai1/admin"
wd.manage().window().maximize();#window_max_size
wd.find_element(:id, "password").click
wd.find_element(:id, "password").clear
wd.find_element(:id, "password").send_keys "1234"
wd.find_element(:id, "login_name").click
wd.find_element(:id, "login_name").clear
wd.find_element(:id, "login_name").send_keys "komaicamera"
wd.find_element(:name, "submit").click
sleep 1
wd.find_element(:link_text, "アップロード・販売").click
sleep 1
wd.find_element(:xpath, "//div[3]/div[6]/form/table/tbody/tr[6]/td[10]/a[1]").click
sleep 1
wd.find_element(:link_text, "自動帯入").click
sleep 1
wd.find_element(:xpath, "//div[@id='caption-confirm-dialog']//button[.='実行']").click
sleep 1
wd.find_element(:xpath, "//div[@class='clearfix']/div[2]/a[2]").click
sleep 1
wd.find_element(:name, "caption_msg1").clear
wd.find_element(:name, "caption_msg1").send_keys "#{dt}"
sleep 1
wd.find_element(:xpath, "//div[@id='caption-regist-dialog']//button[.='プレビュー']").click
sleep 1
wd.find_element(:xpath, "//div[@id='caption-regist-dialog']/form/div[6]/div/input").click
sleep 1
wd.switch_to.alert.accept
sleep 1
wd.find_element(:xpath, "//*[@id='form-batch-delete-photos']/div[2]/div[3]/label").click
sleep 1
wd.find_element(:xpath, "//*[@id='form-batch-delete-photos']/div[2]/div[4]/label").click
#if not wd.find_element(:id, "picture_id-36381").selected?
#    wd.find_element(:id, "picture_id-36381").click
#end
#if not wd.find_element(:id, "picture_id-36382").selected?
#    wd.find_element(:id, "picture_id-36382").click
#end
wd.find_element(:link_text, "選択した写真に一括帯入").click
sleep 1
wd.find_element(:id, "caption_all_msg1").click
wd.find_element(:id, "caption_all_msg1").clear
wd.find_element(:id, "caption_all_msg1").send_keys "かめらまん"
wd.find_element(:id, "caption_all_msg2").click
wd.find_element(:id, "caption_all_msg2").clear
wd.find_element(:id, "caption_all_msg2").send_keys "二段目#{dt}"
sleep 1
wd.find_element(:link_text, "プレビュー").click
sleep 2
wd.find_element(:xpath, "//div[7]/div[2]/form/div[5]/input").click
sleep 1
wd.switch_to.alert.accept
wd.save_screenshot("C:/FinalCheck/#{dt}/obi_camera_off.png")
sleep 1
puts "完了"
wd.quit

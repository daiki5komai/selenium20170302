require 'rubygems'
require 'fileutils'
require 'date'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

dt = Date.today
puts(dt)

#today's_folder
FileUtils.mkdir("C:/FinalCheck/#{dt}") unless FileTest.exist?("C:/FinalCheck/#{dt}")  

if File.exist?("C:/FinalCheck/#{dt}/manual") then
	puts "ファイルあり"
	FileUtils.rm_r("C:/FinalCheck/#{dt}/manual")
	FileUtils.mkdir("C:/FinalCheck/#{dt}/manual")
	puts "一度削除して再度作りました"
 else
	puts "ファイル無し"
	FileUtils.mkdir("C:/FinalCheck/#{dt}/manual")
	puts "無いから作った"
end

#FileUtils.mkdir("C:/FinalCheck/#{dt}/manual") unless FileTest.exist?("C:/FinalCheck/#{dt}/manual") 

    driver.get "https://stg.lookme-e.com/"#ログイン画面
sleep 2
    driver.manage().window().maximize();#window_max_size
    driver.find_element(:css, "input.fullBox").click
    driver.find_element(:css, "input.fullBox").clear
    driver.find_element(:css, "input.fullBox").send_keys "daiki.komai@unifa-e.com"
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/input").click
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/input").clear
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/input").send_keys "1234abcd"
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/div[1]/button").click

sleep 1

    #mypage_Q&A
    driver.find_element(:xpath, "//div[@class='itemList']/ul/li[1]/a/img").click

sleep 1

    #Q&Aitiran_windoID_get
    window = driver.window_handles.last

sleep 1

    #JPstart
    puts "JP開始"
    driver.find_element(:link_text, "komaiJP").click
sleep 1

    #new_windowID_JP1
    windowJP1 = driver.window_handles.last 
sleep 1
    driver.switch_to.window(windowJP1)
sleep 1
    
    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/itiran_JP1.png")
sleep 1
    driver.close
sleep 1
    driver.switch_to.window(window)
sleep 1
    
    puts "JP完了"
    puts "ECC開始"
    #ECCstart
    driver.find_element(:link_text, "komaiECC").click
sleep 1
    #new_windowID_ECC1
    windowECC1 = driver.window_handles.last 
sleep 1
    driver.switch_to.window(windowECC1)
sleep 1

    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/itiran_ECC1.png")
sleep 1
    driver.close
sleep 1
    driver.switch_to.window(window)
sleep 1
    puts "ECC完了"
    puts "SA開始"
    #SAstart
    driver.find_element(:link_text, "komaiSA").click
sleep 1
    #new_windowID_SA1
    windowSA1 = driver.window_handles.last 
sleep 1
    driver.switch_to.window(windowSA1)
sleep 1

    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/itiran_SA1.png")
sleep 1
    driver.close
sleep 1
    driver.switch_to.window(window)
    puts "SA完了"
    puts "NotGroup園開始"
sleep 1
    driver.find_element(:link_text, "komaiひとつめ祇、﨑、髙").click
    #new_windowID_NG1
    windowNG1 = driver.window_handles.last 
sleep 1
    driver.switch_to.window(windowNG1)
sleep 1

    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/itiran_NG1.png")
sleep 1
    driver.close
sleep 1
    driver.switch_to.window(window)
sleep 1
    puts "NotGroup園完了"
    puts "各販売ページ開始"
    puts "JPから"
sleep 1
    driver.find_element(:xpath, "//*[@id='sub']/ul/li[1]/a/img").click
sleep 1
    driver.find_element(:link_text, "komaiJPの写真を見る").click
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/div[3]/ul/li[1]/a/img").click #QAクリック
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/each_JP1.png")
    puts driver.current_url
    driver.navigate.back
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/ul/li[1]/a/img").click#マイページクリック
sleep 1
    driver.find_element(:link_text, "komaiECCの写真を見る").click
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/div[3]/ul/li[1]/a/img").click#QAクリック
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/each_ECC1.png")
    puts driver.current_url
    driver.navigate.back
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/ul/li[1]/a/img").click#マイページクリック
sleep 1
    driver.find_element(:link_text, "komaiSAの写真を見る").click
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/div[3]/ul/li[1]/a/img").click#QAクリック
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/each_SA1.png")
    puts driver.current_url
    driver.navigate.back
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/ul/li[1]/a/img").click#マイページクリック
sleep 1
    driver.find_element(:link_text, "komaiひとつめ祇、﨑、髙の写真を見る").click
sleep 2
    driver.find_element(:xpath, "//*[@id='sub']/div[4]/ul/li[1]/a/img").click#QAクリック
    #//*[@id='sub']/div[4]/ul/li[1]/a/img_宝くじなし時？
    #//*[@id="sub"]/div[3]/ul/li[1]/a/img_宝くじあり時？
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/each_NG1.png")
    puts driver.current_url
    driver.navigate.back
sleep 1
    driver.find_element(:xpath, "//div[@id='sub']/ul/li[1]/a/img").click#マイページクリック
    puts "user完了、続いてadmin"
    driver.get "https://stg.lookme-e.com/komai1/admin"
sleep 1
    driver.find_element(:id, "password").click
    driver.find_element(:id, "password").clear
    driver.find_element(:id, "password").send_keys "1234"
    driver.find_element(:name, "submit").click
sleep 1
    driver.find_element(:link_text, "オンラインマニュアル").click
sleep 1
    #new_windowID_adminNG&Switch
    windowadminNG = driver.window_handles.last
    driver.switch_to.window(windowadminNG)
    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/adminNG.png")
    sleep 1
    driver.close
    driver.switch_to.window(window)
sleep 1
    driver.find_element(:link_text, "logout").click
sleep 1
    driver.get "https://stg.lookme-e.com/komai3/admin"
sleep 1
    driver.find_element(:id, "password").click
    driver.find_element(:id, "password").clear
    driver.find_element(:id, "password").send_keys "1234"
    driver.find_element(:name, "submit").click
sleep 1
    driver.find_element(:link_text, "オンラインマニュアル").click
sleep 1
    #new_windowID_adminJP&Switch
    windowadminJP = driver.window_handles.last
    driver.switch_to.window(windowadminJP)
    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/adminJP.png")
    sleep 1
    driver.close
    driver.switch_to.window(window)
sleep 1
    driver.find_element(:link_text, "logout").click
sleep 1
    driver.get "https://stg.lookme-e.com/komai4/admin"
sleep 1
    driver.find_element(:id, "password").click
    driver.find_element(:id, "password").clear
    driver.find_element(:id, "password").send_keys "1234"
    driver.find_element(:name, "submit").click
sleep 1
    driver.find_element(:link_text, "オンラインマニュアル").click
sleep 1
    #new_windowID_adminSA&Switch
    windowadminSA = driver.window_handles.last
    driver.switch_to.window(windowadminSA)
    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/adminSA.png")
    sleep 1
    driver.close
    driver.switch_to.window(window)
sleep 1
    driver.find_element(:link_text, "logout").click
sleep 1
    driver.get "https://stg.lookme-e.com/komai5/admin"
sleep 1
    driver.find_element(:id, "password").click
    driver.find_element(:id, "password").clear
    driver.find_element(:id, "password").send_keys "1234"
    driver.find_element(:name, "submit").click
sleep 1
    driver.find_element(:link_text, "オンラインマニュアル").click
sleep 1
    #new_windowID_adminECC&Switch
    windowadminECC = driver.window_handles.last
    driver.switch_to.window(windowadminECC)
    #ScreenShot
    puts driver.current_url
    driver.save_screenshot("C:/FinalCheck/#{dt}/manual/adminECC.png")
    sleep 1
    driver.close
    driver.switch_to.window(window)
sleep 1
    driver.find_element(:link_text, "logout").click
sleep 1
 puts "全て完了"

driver.quit

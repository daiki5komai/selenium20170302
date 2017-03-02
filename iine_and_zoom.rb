require 'rubygems'
require 'date'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

dt = Date.today
nt = Time.now
puts(dt)
puts(nt)

#today's_folder
FileUtils.mkdir("C:/FinalCheck/#{dt}") unless FileTest.exist?("C:/FinalCheck/#{dt}") 
if File.exist?("C:/FinalCheck/#{dt}/iine") then
	puts "ファイルあり"
	FileUtils.rm_r("C:/FinalCheck/#{dt}/iine")
	FileUtils.mkdir("C:/FinalCheck/#{dt}/iine")
	puts "一度削除して再度作りました"
 else
	puts "ファイル無し"
	FileUtils.mkdir("C:/FinalCheck/#{dt}/iine")
	puts "無いから作った"
end

    driver.get "https://stg.lookme-e.com/"
sleep 1
    driver.manage().window().maximize();#window_max_size
    driver.find_element(:css, "input.fullBox").click
    driver.find_element(:css, "input.fullBox").clear
    driver.find_element(:css, "input.fullBox").send_keys "daiki.komai@unifa-e.com"
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/input").click
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/input").clear
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/input").send_keys "1234abcd"
    driver.find_element(:xpath, "//div[@id='loginForm']/div/div[2]/form/div/div[2]/div[1]/button").click
sleep 1
    driver.find_element(:link_text, "komaiひとつめ祇、﨑、髙の写真を見る").click
sleep 2
    driver.find_element(:xpath, "//li[@id='pictures_34124']/div[2]/div[1]/a/img").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/iine1.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34124']/div[2]/div[1]/a/img").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/iine2.png")
sleep 1
    driver.find_element(:css, "div.print_guide").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/iine3.png")
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/iine4.png")
sleep 1
    driver.find_element(:id, "sentaku_btn").click
sleep 1
    driver.find_element(:id, "sentaku_btn_minus").click
sleep 1
    #driver.find_element(:xpath, "//div[2]/div").click #ここでモーダルが閉じれない問題
    driver.navigate.back
sleep 1
    driver.navigate.forward
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34124']/div[1]/div[3]/a/img").click#拡大やった
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34124']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/iine5.png")
sleep 1
    driver.find_element(:link_text, "購入する(L版(先生))").click
sleep 1
    driver.find_element(:id, "picture_minus_34124").click
sleep 1
    driver.find_element(:xpath, "//div[@id='frFeed']/div[4]/div/p[1]/a/img").click
sleep 1
    driver.find_element(:css, "div.print_guide").click
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/iine6.png")
sleep 1
    #driver.find_element(:xpath, "//div[2]/div").click #モーダルのところ
    driver.navigate.back
    driver.navigate.forward
sleep 1
    driver.find_element(:link_text, "購入する (L版(先生))").click
sleep 1
    driver.find_element(:id, "picture_minus_34124").click
    driver.navigate.back
sleep 1
    driver.find_element(:css, "div.fp-ui").click
sleep 5
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/movie_play.png")
    driver.find_element(:css, "span.close-button").click
sleep 1
    driver.find_element(:link_text, "購入する").click
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/movie_buy.png")
    driver.find_element(:link_text, "購入をやめる").click
sleep 1
    driver.find_element(:xpath, "//div[@id='videoFeed']/div[2]/div[2]/p[2]/a/img").click
    driver.find_element(:xpath, "//div[@id='video_2']/div[2]/div[2]").click
sleep 5
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/movie_play_more.png")
    driver.find_element(:xpath, "//div[@id='video_2']//span[.='×']").click
sleep 1
    driver.find_element(:xpath, "//div[@id='video_buy_104']//a[.='購入する']").click
sleep 1
    driver.find_element(:xpath, "//div[@id='video_buy_stop_104']//a[.='購入をやめる']").click
    driver.navigate.back
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_32993']/div[1]/div[1]").click
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine1.png")
sleep 2
    driver.find_element(:id, "iine_btn").click
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine2.png")
    driver.find_element(:id, "sentaku_btn").click
sleep 1
    driver.find_element(:id, "sentaku_btn_minus").click
    #driver.find_element(:xpath, "//div[2]/div").click#モーダルのところ
    driver.navigate.back
sleep 1
    driver.navigate.forward
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_32993']/div[1]/div[3]/a/img").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine3.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_32993']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine4.png")
sleep 1
    driver.find_element(:link_text, "購入する(2L版(先生・帯入り))").click
sleep 1
    driver.find_element(:id, "picture_minus_32993").click
sleep 1
    driver.find_element(:xpath, "//div[@id='familyFeed']/div[2]/div/p[1]/a/img").click#もっとみる
sleep 1
    driver.find_element(:css, "div.print_guide").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine5.png")
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine6.png")
sleep 1
    driver.find_element(:id, "sentaku_btn").click
sleep 1
    driver.find_element(:id, "sentaku_btn_plus").click
    driver.action.double_click(driver.find_element(:id, "sentaku_btn_minus")).perform
    #driver.find_element(:xpath, "//div[2]/div").click#モーダルのところ
    driver.navigate.back
sleep 1
    driver.navigate.forward
    driver.find_element(:xpath, "//li[@id='pictures_32993']/div[1]/div[3]/a/img").click
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_32993']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine7.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_32993']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/fav_iine8.png")
sleep 1
    driver.find_element(:link_text, "購入する(2L版(先生・帯入り))").click
sleep 1
    driver.find_element(:id, "picture_minus_32993").click
    driver.navigate.back
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34209']//div[normalize-space(.)='']").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine1.png")
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine2.png")
sleep 1
    driver.find_element(:id, "sentaku_btn").click
sleep 1
    driver.find_element(:id, "sentaku_btn_plus").click
sleep 1
    driver.action.double_click(driver.find_element(:id, "sentaku_btn_minus")).perform
    #driver.find_element(:xpath, "//div[2]/div").click#モーダルのところ
    driver.navigate.back
sleep 1
    driver.navigate.forward
    driver.find_element(:xpath, "//li[@id='pictures_34209']/div[1]/div[3]/a/img").click
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34209']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine3.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34209']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine4.png")
sleep 1
    driver.find_element(:xpath, "//div[@id='picture_select_34209']/a").click
sleep 1
    driver.find_element(:id, "picture_minus_34209").click
sleep 1
    driver.find_element(:css, "img.spOff").click
sleep 1
    driver.find_element(:css, "div.print_guide").click
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine5.png")
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine6.png")
sleep 1
    driver.find_element(:xpath, "//div[2]/div").click#モーダルのところ
    driver.navigate.back
sleep 1
    driver.navigate.forward
    driver.find_element(:xpath, "//li[@id='pictures_34209']/div[1]/div[3]/a/img").click
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34209']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine7.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34209']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/toggether_iine8.png")
sleep 1
    driver.find_element(:link_text, "購入する(2L版(先生・帯入り))").click
sleep 1
    driver.find_element(:id, "picture_minus_34209").click
sleep 1
    driver.navigate.back
    driver.find_element(:xpath, "//li[@id='pictures_34080']//div[normalize-space(.)='']").click
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine1.png")
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine2.png")
sleep 1
    driver.find_element(:id, "sentaku_btn").click
sleep 1
    driver.find_element(:id, "sentaku_btn_minus").click
sleep 1
    driver.find_element(:xpath, "//div[2]/div").click#モーダルのところ
    driver.navigate.back
sleep 1
    driver.navigate.forward
    driver.find_element(:xpath, "//li[@id='pictures_34080']/div[1]/div[3]/a/img").click#かくだお
sleep 1
   driver.find_element(:xpath, "//li[@id='pictures_34080']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine3.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34080']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine4.png")
sleep 1
    driver.find_element(:xpath, "//div[@id='picture_select_34080']/a").click
sleep 1
    driver.find_element(:id, "picture_minus_34080").click
sleep 1
    if not driver.find_element(:xpath, "//select[@id='event_filter_select_tag']//option[2]").selected?
        driver.find_element(:xpath, "//select[@id='event_filter_select_tag']//option[2]").click
    end
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34216']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine5.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34216']/div[2]/div[1]/a/img").click#いいねのところ
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine6.png")
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34216']/div[1]/div[3]/a/img").click
sleep 1
    driver.find_element(:xpath, "//div[@id='picture_select_34216']/a").click
sleep 1
    driver.find_element(:id, "picture_minus_34216").click
sleep 1
    driver.find_element(:xpath, "//li[@id='pictures_34216']//div[normalize-space(.)='']").click
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine7.png")
sleep 1
    driver.find_element(:id, "iine_btn").click
sleep 1
    driver.save_screenshot("C:/FinalCheck/#{dt}/iine/all_iine8.png")
sleep 1
    driver.find_element(:id, "sentaku_btn").click
sleep 1
    driver.find_element(:id, "sentaku_btn_plus").click
sleep 1
    driver.find_element(:id, "sentaku_btn_minus").click
sleep 1
    puts "全部完了"
nt = Time.now
puts(nt)
    driver.quit

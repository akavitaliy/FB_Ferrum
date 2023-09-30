require 'ferrum'


browser = Ferrum::Browser.new(
    browser_path: "/usr/bin/google-chrome", 
    headless: false, 
    browser_options: { "disable-blink-features": "AutomationControlled", 'no-sandbox':nil, 'incognito':nil }, 
    process_timeout: 160
    #xvfb: true,
    #extensions: ['stealth.min.js']    
)

browser.goto("https://www.facebook.com")

sleep 3

element_login = browser.at_css('input[name=email]')
element_login.focus
element_login.type("VitamiN_man@mail.ru") 

element_pwd = browser.at_css('input[name=pass]')
element_pwd.focus
element_pwd.type("123456123aKaneo1", :enter)

sleep 10

browser.at_xpath('/html/body/div[1]/div/div[1]/div/div[3]/div/div/div/div[1]/div[1]/div/div[2]/div/div/div/div[3]/div/div[2]/div/div/div/div[2]/div[2]').focus.click

sleep 10

#browser.evaluate("[window.scrollX, 50]")

puts '1'
#browser.at_xpath('/html/body/div[1]/div/div[1]/div/div[4]/div/div/div[1]/div/div[2]/div/div/div/form/div/div[2]/div/div/div/div[2]/div/div/div[1]/div/div/div[2]/div/div[1]/div').focus.click
# gets
# sleep 3
# puts '2'
# browser.at_xpath('/html/body/div[1]/div/div[1]/div/div[4]/div/div/div[1]/div/div[2]/div/div/div/form/div/div[2]/div/div/div/div[2]/div/div/div[2]/div/div[2]/div').focus.click

# #browser.at_xpath('/html/body/div[1]/div/div[1]/div/div[4]/div/div/div[1]/div/div[2]/div/div/div/form/div/div[2]/div/div/div/div[2]/div/div/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[2]/div[2]/div/div/i').focus.click
# gets
puts '3'
file_input = browser.at_xpath('/html/body/div[1]/div/div[1]/div/div[4]/div/div/div[1]/div/div[2]/div/div/div/form/div/div[1]/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div[1]/div/div[1]/div/div/div')
sleep 1
file_path = '/home/vitamin/my_files/projects/Parsers/Facebook_ferrum/1.png'
sleep 1
file_input.upload(file_path)
gets


require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get "http://google.com"
element = driver.find_element :id=>"lst-ib"
element.send_keys "Toronto"
element.submit
puts "Page title is #{driver.title}"
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "toronto" }
puts "Page title is #{driver.title}"
driver.quit



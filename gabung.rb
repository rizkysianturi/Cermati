require "selenium-webdriver"


driver = Selenium::WebDriver.for:chrome
# options = driver.ChromeOptions()
# options.add_experimental_option('excludeSwitches', ['enable-logging'])
driver.navigate.to "https://www.cermati.com/gabung"

email = driver.find_element(id: 'email')
email.send_keys('rizkysianturi007@gmail.com')

password = driver.find_element(id: 'password')
password.send_keys('inipassword123')

conf_password = driver.find_element(id: 'confirm-password')
conf_password.send_keys('inipassword123')

first_name = driver.find_element(id: 'first-name')
first_name.send_keys('Rizky')

last_name = driver.find_element(id: 'last-name')
last_name.send_keys('Sianturi')

phone = driver.find_element(id: 'mobile-phone')
phone.send_keys('082370292355')

city = driver.find_element(id: 'residence-city')
city.send_keys('KABUPATEN TOBA SAMOSIR')

driver.action.send_keys(:enter).perform

driver.manage.timeouts.implicit_wait = 5

submit = driver.find_element(class: 'btn-submit')
submit.click
require 'selenium-webdriver'

class Login

	@chromedriver
	
	def initialize(driver)

		@chromedriver = driver

	end

	def enterUsername(username)

		@chromedriver.find_element(:id, "email").send_keys(username)

	end

	def enterPassword(password)

		@chromedriver.find_element(:name, "pass").send_keys(password)

	end

	def clickSignin

		@chromedriver.find_element(:xpath, "//input[@value='Entrar']").click

	end

end
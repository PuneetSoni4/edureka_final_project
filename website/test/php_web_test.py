from selenium import webdriver
from selenium.webdriver.firefox.options import Options

opts = Options()
opts.set_headless()
assert opts.headless  # Operating in headless mode

driver = webdriver.Firefox(options=opts)

driver.get("http://localhost:8085")
driver.find_element_by_id("About Us").click()
about_us_text = driver.find_element_by_id("PID-ab2-pg").text
assert "This is about page." in about_us_text
driver.close()
quit()

## To execute, run: python php_web_test.py

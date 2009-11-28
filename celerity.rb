require "rubygems"
gem "celerity"
require "celerity"

browser = Celerity::Browser.new
browser.goto("http://www.google.com")
browser.text_field(:name, "q").value = "Celerity"
browser.button(:name, "btnG").click

puts "yay" if browser.text.include? "celerity.rubyforge.org"
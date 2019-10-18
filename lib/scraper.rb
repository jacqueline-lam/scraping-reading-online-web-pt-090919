require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

# take the string of HTML returned by open-uri's open method 
  # and convert it into a NodeSet (bunch of nested "nodes") 
  # that we can easily play around with.
doc = Nokogiri::HTML(html)

# call .css on doc and give it the argument of our CSS selector:
doc.css(".headline-26OIBN")
require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

# take the string of HTML returned by open-uri's open method 
  # and convert it into a NodeSet (bunch of nested "nodes") 
  # that we can easily play around with.
doc = Nokogiri::HTML(html)

# call .css on doc and give it the argument of our CSS selector:
doc.css(".headline-26OIBN")

# returned what looks like an Array containing one Nokogiri object
# [#<Nokogiri::XML::Element:0x3fdb39ac8380 name="h1" attributes=[#<Nokogiri::XML::Attr:0x3fdb39ac86dc name="class" value="headline-26OIBN">] children=[#<Nokogiri::XML::Text:0x3fdb39ac5d60 "Change things.">]>]

# .text to access text content inside an element
  # scraped by Nokogiri
doc.css(".headline-26OIBN").text
# => "Change things."
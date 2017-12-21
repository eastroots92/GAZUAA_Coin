require 'json'
require 'nokogiri'
require 'open-uri'
# all 
source = "https://api.coinone.co.kr/ticker?currency=etc"

data = open(source).read()
result = JSON.parse(data)

puts result["last"]


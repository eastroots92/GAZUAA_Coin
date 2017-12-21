require 'json'
require 'nokogiri'
require 'open-uri'
#bittumb okay
source = "https://coinmarketcap.com/"

data = Nokogiri::HTML(open(source).read())

coin = data.css("table#currencies tr td a.price")

coin.each do |p|
   puts "name :"+p.attr("href").split("/")[2]
   puts p.text
end

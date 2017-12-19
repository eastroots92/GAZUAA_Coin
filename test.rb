require 'json'
require 'open-uri'
#bittumb okay
source = "https://api.bithumb.com/public/recent_transactions/etc"

data = JSON.parse(open(source).read())
puts data["data"][0]["price"]

gem 'nokogiri'
gem 'rest-client'
url = "https://api.calq.io/Track"

result = Nokogiri::HTML(open(url))
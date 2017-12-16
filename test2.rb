require 'json'
require 'open-uri'

source = "https://crix-api-endpoint.upbit.com/v1/crix/candles/days?code=CRIX.UPBIT.KRW-XRP"
data = open(source).read()

data = JSON.parse(data)

puts data.first["tradePrice"]




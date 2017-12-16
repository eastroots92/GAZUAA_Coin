require 'json'
require 'open-uri'
require 'coin'
class HomeController < ApplicationController
  def index

    energo_source = "https://api.coinnest.co.kr/api/pub/ticker?coin=tsl"
    data = open(energo_source).read()
    @TSL = JSON.parse(data)["last"]

    kiber_source = "https://api.coinnest.co.kr/api/pub/ticker?coin=knc"
    data = open(kiber_source).read()
    @KNC = JSON.parse(data)["last"]
    
    tron_source = "https://api.coinnest.co.kr/api/pub/ticker?coin=tron"
    data = open(tron_source).read()
    @TRON = JSON.parse(data)["last"]

    

    # upbit

    upbit_xrp_source = "https://crix-api-endpoint.upbit.com/v1/crix/candles/days?code=CRIX.UPBIT.KRW-XRP"
    data = open(upbit_xrp_source).read()
    
    data = JSON.parse(data)
    
    @upbit_xrp = data.first["tradePrice"]
  end
end

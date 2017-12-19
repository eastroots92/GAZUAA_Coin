require 'json'
require 'open-uri'
class Coin
    # 이름 변경해야함
    # value 소문자로 변경 해야함 coinnest

    # 마켓 추가 설정
    def self.exchangeStore
        grouped_options ={
            '거래소' =>[
                ['코인네스트',"coinnest"],
                ['업비트','upbit'],
                ['빗썸','bithumb']
            ]
        }

        return grouped_options
    end

    def self.coinnest

        grouped_options = {
            '코인네스트' => [
                ['카이버(KNC)',"knc"],
                ["에너고(TSL)", "tsl"],
                ["트론(TRON)" ,"tron"],
                ["비트코인(BTC)" ,"btc"],
                ["비트코인캐쉬(BCH)" ,"btc"],
                ["비트코인골드(BTG)" ,"btg"],
                ["비트코인다이아(BCD)" ,"bcd"],
                ["이더리움(ETH)", "eth"],
                ["이더리움클래식(ETC)" ,"etc"],
                ["카르다노(ADA)", "ada"],
                ["큐텀(QTUM)","qtum"],
                ["네오(NEO)","neo"],
                ["NeoGas(GAS)", "gas"],
                ["OmiseGO(OMG)" ,"omg"],
                ["윌튼(WTC)" ,"wtc"],
                ["모나코(MCO)" ,"mco"],
                ["Ink(INK)" ,"ink"]
            ]
        }
        return grouped_options
    end

    def self.upbit
        grouped_options ={
            '업비트' => [
                ["비트코인BTC/KRW","KRW-BTC"]  ,     
                ["퀀텀QTUM/KRW","KRW-QTUM"],
                ["리플XRP/KRW","KRW-XRP"],
                ["아인스타이늄EMC2/KRW","KRW-EMC2"],
                ["에이다ADA/KRW","KRW-ADA"],
                ["스테이터스네트워크토큰SNT/KRW","KRW-SNT"],
                ["이더리움클래식ETC/KRW","KRW-ETC"],
                ["스텔라루멘XLM/KRW","KRW-XLM"],
                ["라이트코인LTC/KRW","KRW-LTC"]
            ]

        }
        return grouped_options
    end

    def self.bithumb
        grouped_options ={
            '빗썸' => [    
                ["비트코인","btc"],     
                ["이더리움","eth"],
                ["대시","dash"],
                ["라이트코인","ltc"],
                ["이더리움클래식","etc"],
                ["리플","xrp"],
                ["모네로","xmr"],
                ["비트캐시","bch"],
                ["제트캐시","zec"],
                ["큐텀","qtum"],
                ["비트골드","btg"],
                ["이오스","eos"]
            ]
        }
        return grouped_options
    end

    def self.coinnest_getdata(params)
        puts 'coinnest'
        puts params 
        if(params == nil)
            params =" "
        end
        url = "https://api.coinnest.co.kr/api/pub/ticker?coin="
        url += params

        data = open(url).read()
        result = JSON.parse(data)["last"]
        
        return result
    end
    def self.upbit_getdata(params)
        puts 'upbit'
        puts params 
        if(params == nil)
            params =" "
        end
        url = "https://crix-api-endpoint.upbit.com/v1/crix/candles/days?code=CRIX.UPBIT."
        url += params
        # puts url
        data = open(url).read()

        data = JSON.parse(data)
        puts data.first["tradePrice"]
        return data.first["tradePrice"]
        
    end
     # 마켓 추가 설정
    def self.bithumb_getdata(params)
        puts 'bithumb'
        puts params
        if(params == nil)
            params= " "
        end
        source = "https://api.bithumb.com/public/recent_transactions/"
        source += params

        data = JSON.parse(open(source).read())
        return data["data"][0]["price"]
    end

    def self.coin_result(buy,now)
   
        value = (((now.to_f)/(buy.to_f))-1)*100
        return value.round(2)
    end

    def self.coin_price(deposit,price)
        # puts "coin_price"
        # puts deposit
        # puts price
        # puts ((deposit.to_f)*(price.to_f))*deposit.to_f/100.0
        result = (deposit.to_f)+((deposit.to_f)*(price.to_f))/100.0
        
        return result.round(2)
    end
end
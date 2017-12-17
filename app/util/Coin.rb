require 'json'
require 'open-uri'
class Coin
    # 이름 변경해야함
    # value 소문자로 변경 해야함 coinnest
    def self.coinnest 
        grouped_options = 
        {
            'COINNEST' => [
                ['카이버(KNC)',"C_knc"],
                ["에너고(TSL)", "C_tsl"],
                ["트론(TRON)" ,"C_tron"],
                ["비트코인(BTC)" ,"C_btc"],
                ["비트코인캐쉬(BCH)" ,"C_btc"],
                ["비트코인골드(BTG)" ,"C_btg"],
                ["비트코인다이아(BCD)" ,"C_bcd"],
                ["이더리움(ETH)", "C_eth"],
                ["이더리움클래식(ETC)" ,"C_etc"],
                ["카르다노(ADA)", "C_ada"],
                ["큐텀(QTUM)","C_qtum"],
                ["네오(NEO)","C_neo"],
                ["NeoGas(GAS)", "C_gas"],
                ["OmiseGO(OMG)" ,"C_omg"],
                ["윌튼(WTC)" ,"C_wtc"],
                ["모나코(MCO)" ,"C_mco"],
                ["Ink(INK)" ,"C_ink"]
            ],
            'UPBIT' => [
                ["비트코인BTC/KRW","U_KRW-BTC"]  ,     
                ["퀀텀QTUM/KRW","U_KRW-QTUM"],
                ["리플XRP/KRW","U_KRW-XRP"],
                ["아인스타이늄EMC2/KRW","U_KRW-EMC2"],
                ["에이다ADA/KRW","U_KRW-ADA"],
                ["스테이터스네트워크토큰SNT/KRW","U_KRW-SNT"],
                ["이더리움클래식ETC/KRW","U_KRW-ETC"],
                ["스텔라루멘XLM/KRW","U_KRW-XLM"],
                ["라이트코인LTC/KRW","U_KRW-LTC"]
              
            ]

        }
       
       
    #    'BITHUMB' => [
    #            
    #        ["비트코인(BTC)", "B_BTC"],
    #        ["이더리움(ETH)", "B_ETH"],
    #        ["비트캐쉬(BCH)", "B_BCH"],
    #        ["리플(XRP)", "B_XRP"],
    #        ["라이트코인(LTC)","B_LTC"],
    #        ["대시(DASH)","B_DASH"],
    #        ["비트골드(BTG)","B_BTG"],
    #        ["모네로(XMR)","B_XMR"],
    #        ["이오스(EOC)","B_EOC"],
    #        ["이더리움클래식(ETC)","B_ETC"],
    #        ["퀀텀(QTUM)","B_QTUM"],
    #        ["제트캐쉬(ZCASH)","B_ZCASH"]
    #    ],
        

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
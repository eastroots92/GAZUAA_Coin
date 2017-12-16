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
                ["비트코인골드(BTG)" ,"C_BTG"],
                ["비트코인다이아(BCD)" ,"C_BCD"],
                ["이더리움(ETH)", "C_ETH"],
                ["이더리움클래식(ETC)" ,"C_ETC"],
                ["카르다노(ADA)", "C_ADA"],
                ["큐텀(QTUM)","C_QTUM"],
                ["네오(NEO)","C_NEO"],
                ["NeoGas(GAS)", "C_GAS"],
                ["OmiseGO(OMG)" ,"C_OMG"],
                ["윌튼(WTC)" ,"C_WTC"],
                ["모나코(MCO)" ,"C_MCO"],
                ["Ink(INK)" ,"C_INK"]
            ],
            'BITHUMB' => [
                
                ["비트코인(BTC)", "B_BTC"],
                ["이더리움(ETH)", "B_ETH"],
                ["비트캐쉬(BCH)", "B_BCH"],
                ["리플(XRP)", "B_XRP"],
                ["라이트코인(LTC)","B_LTC"],
                ["대시(DASH)","B_DASH"],
                ["비트골드(BTG)","B_BTG"],
                ["모네로(XMR)","B_XMR"],
                ["이오스(EOC)","B_EOC"],
                ["이더리움클래식(ETC)","B_ETC"],
                ["퀀텀(QTUM)","B_QTUM"],
                ["제트캐쉬(ZCASH)","B_ZCASH"]
            ]
        }
        return grouped_options
    end

    def self.coinnest_getdata(params)
        puts 'params'
        puts params 
        if(params == nil)
            params =" "
        end
        url = "https://api.coinnest.co.kr/api/pub/ticker?coin="
        url += params

        data = open(url).read()
        result = JSON.parse(data)["last"]
     #   tron_source = "https://api.coinnest.co.kr/api/pub/ticker?coin=tron"
     #   data = open(tron_source).read()
     #   @TRON = JSON.parse(data)["last"]
        puts result
        
        return result
    end

    def self.coin_result(buy,now)
        
        value = (now.to_f)/(buy.to_f)*100
        return value.round(2)
    end
end
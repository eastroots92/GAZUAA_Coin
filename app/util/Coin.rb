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
                ['업비트_btc','upbit_btc'],
                ['빗썸','bithumb'],
                ['코인원','coinone']
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
                ["비트코인캐쉬(BCH)" ,"bch"],
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
            '업비트_krw' => [
                ["비트코인BTC/KRW","KRW-BTC"],     
                ["퀀텀QTUM/KRW","KRW-QTUM"],
                ["리플XRP/KRW","KRW-XRP"],
                ["아인스타이늄EMC2/KRW","KRW-EMC2"],
                ["에이다ADA/KRW","KRW-ADA"],
                ["스테이터스네트워크토큰SNT/KRW","KRW-SNT"],
                ["이더리움클래식ETC/KRW","KRW-ETC"],
                ["스텔라루멘XLM/KRW","KRW-XLM"],
                ["라이트코인LTC/KRW","KRW-LTC"],
                ["머큐리MER/KRW","KRW-MER"],
                ["오미세고OMG/KRW","KRW-OMG"],
                ["비트코인캐시BCC/KRW","KRW-BCC"],
                ["이더리움ETH/KRW","KRW-ETH"],
                ["뉴이코노미무브먼트XEM/KRW","KRW-XEM"],
                ["코모도KMD/KRW","KRW-KMD"],
                ["아더ARDR/KRW","KRW-ARDR"],
                ["스팀달러SBD/KRW","KRW-SBD"],
                ["웨이브WAVES/KRW","KRW-WAVES"],
                ["스트라티스STRAT/KRW","KRW-STRAT"],
                ["비트코인골드BTG/KRW","KRW-BTG"],
                ["네오NEO/KRW","KRW-NEO"],
                ["파워렛저POWR/KRW","KRW-POWR"],
                ["블록틱스TIX/KRW","KRW-TIX"],
                ["버트코인VTC/KRW","KRW-VTC"],
                ["메탈MTL/KRW","KRW-MTL"],
                ["스팀STEEM/KRW","KRW-STEEM"],
                ["그로스톨코인GRS/KRW","KRW-GRS"],
                ["스토리지STORJ/KRW","KRW-STORJ"],
                ["지캐시ZEC/KRW","KRW-ZEC"],
                ["모네로XMR/KRW","KRW-XMR"],
                ["리스크LSK/KRW","KRW-LSK"],
                ["피벡스PIVX/KRW","KRW-PIVX"],
                ["대시DASH/KRW","KRW-DASH"],
                ["아크ARK/KRW","KRW-ARK"],
                ["어거REP/KRW","KRW-REP"]
            ]

        }
        return grouped_options
    end
    def self.upbit_btc
        grouped_options ={
            '업비트_btc' => [
                ['이더리움BTC-ETH','BTC-ETH'],
                ['리플BTC-XRP','BTC-XRP'],
                ['이더리움클래식BTC-ETC','BTC-ETC'],
                ['디지바이트BTC-DGB','BTC-DGB'],
                ['라이트코인BTC-LTC','BTC-LTC'],
                ['웨이브BTC-WAVES','BTC-WAVES'],
                ['도지코인BTC-DOGE','BTC-DOGE'],
                ['뉴이코노미무브먼트BTC-XEM','BTC-XEM'],
                ['리스크BTC-LSK','BTC-LSK'],
                ['네오BTC-NEO','BTC-NEO'],
                ['에드엑스BTC-ADX','BTC-ADX'],
                ['모나코BTC-MCO','BTC-MCO'],
                ['퍼스트블러드BTC-1ST','BTC-1ST'],
                ['애드토큰BTC-ADT','BTC-ADT'],
                ['아드리아고나스BTC-AGRS','BTC-AGRS'],
                ['에이엠피BTC-AMP','BTC-AMP'],
                ['BTC-ANT','BTC-ANT'],
                ['BTC-ARDR','BTC-ARDR'],
                ['BTC-ARK','BTC-ARK'],
                ['BTC-BAT','BTC-BAT'],
                ['BTC-BAY','BTC-BAY'],
                ['BTC-BCC','BTC-BCC'],
                ['BTC-BITB','BTC-BITB'],
                ['BTC-BLK','BTC-BLK'],
                ['BTC-BLOCK','BTC-BLOCK'],
                ['BTC-BNT','BTC-BNT'],
                ['BTC-BSD','BTC-BSD'],
                ['BTC-BURST','BTC-BURST'],
                ['BTC-CFI','BTC-CFI'],
                ['BTC-CLOAK','BTC-CLOAK'],
                ['BTC-CVC','BTC-CVC'],
                ['대시BTC-DASH','BTC-DASH'],
                ['BTC-DCR','BTC-DCR'],
                ['BTC-DCT','BTC-DCT'],
                ['BTC-DGD','BTC-DGD'],
                ['BTC-DOPE','BTC-DOPE'],
                ['BTC-DYN','BTC-DYN'],
                ['BTC-EDG','BTC-EDG'],
                ['BTC-EMC2','BTC-EMC2'],
                ['BTC-EXCL','BTC-EXCL'],
                ['BTC-EXP','BTC-EXP'],
                ['BTC-FCT','BTC-FCT'],
                ['BTC-FTC','BTC-FTC'],
                ['BTC-FUN','BTC-FUN'],
                ['BTC-GAME','BTC-GAME'],
                ['BTC-GBYTE','BTC-GBYTE'],
                ['BTC-GNO','BTC-GNO'],
                ['BTC-GNT','BTC-GNT'],
                ['BTC-GRS','BTC-GRS'],
                ['BTC-GUP','BTC-GUP'],
                ['BTC-HMQ','BTC-HMQ'],
                ['BTC-ION','BTC-ION'],
                ['BTC-KMD','BTC-KMD'],
                ['BTC-KORE','BTC-KORE'],
                ['BTC-LBC','BTC-LBC'],
                ['BTC-MAID','BTC-MAID'],
                ['BTC-MEME','BTC-MEME'],
                ['BTC-MONA','BTC-MONA'],
                ['BTC-MTL','BTC-MTL'],
                ['BTC-MUE','BTC-MUE'],
                ['BTC-MYST','BTC-MYST'],
                ['BTC-NBT','BTC-NBT'],
                ['BTC-NMR','BTC-NMR'],
                ['BTC-NXS','BTC-NXS'],
                ['BTC-NXT','BTC-NXT'],
                ['BTC-OK','BTC-OK'],
                ['BTC-OMG','BTC-OMG'],
                ['BTC-PART','BTC-PART'],
                ['BTC-PAY','BTC-PAY'],
                ['BTC-PIVX','BTC-PIVX'],
                ['BTC-PTOY','BTC-PTOY'],
                ['BTC-QRL','BTC-QRL'],
                ['큐텀BTC-QTUM','BTC-QTUM'],
                ['BTC-RADS','BTC-RADS'],
                ['BTC-RDD','BTC-RDD'],
                ['BTC-REP','BTC-REP'],
                ['BTC-RLC','BTC-RLC'],
                ['BTC-SAFEX','BTC-SAFEX'],
                ['BTC-SC','BTC-SC'],
                ['BTC-SHIFT','BTC-SHIFT'],
                ['BTC-SIB','BTC-SIB'],
                ['BTC-SLS','BTC-SLS'],
                ['BTC-SNGLS','BTC-SNGLS'],
                ['BTC-SNT','BTC-SNT'],
                ['BTC-SPHR','BTC-SPHR'],
                ['BTC-STEEM','BTC-STEEM'],
                ['BTC-STORJ','BTC-STORJ'],
                ['BTC-STRAT','BTC-STRAT'],
                ['BTC-SWT','BTC-SWT'],
                ['BTC-SYNX','BTC-SYNX'],
                ['BTC-SYS','BTC-SYS'],
                ['BTC-TX','BTC-TX'],
                ['BTC-UBQ','BTC-UBQ'],
                ['BTC-UNB','BTC-UNB'],
                ['BTC-VIA','BTC-VIA'],
                ['BTC-VOX','BTC-VOX'],
                ['BTC-VRC','BTC-VRC'],
                ['BTC-VTC','BTC-VTC'],
                ['BTC-WINGS','BTC-WINGS'],
                ['BTC-XAUR','BTC-XAUR'],
                ['BTC-XDN','BTC-XDN'],
                ['BTC-XEL','BTC-XEL'],
                ['BTC-XLM','BTC-XLM'],
                ['모네로BTC-XMR','BTC-XMR'],
                ['BTC-XVG','BTC-XVG'],
                ['BTC-XZC','BTC-XZC'],
                ['BTC-ZEC','BTC-ZEC'],
                ['BTC-ZEN','BTC-ZEN'],
                ['BTC-TRIG','BTC-TRIG'],
                ['인터넷오브피플BTC-IOP','BTC-IOP'],
                ['나브BTC-NAV','BTC-NAV'],
                ['라이즈BTC-RISE','BTC-RISE'],
                ['에이다BTC-ADA','BTC-ADA'],
                ['BTC-MANA','BTC-MANA'],
                ['BTC-SALT','BTC-SALT'],
                ['BTC-SBD','BTC-SBD'],
                ['BTC-TIX','BTC-TIX'],
                ['BTC-RCN','BTC-RCN'],
                ['BTC-VIB','BTC-VIB'],
                ['파워렛져BTC-POWR','BTC-POWR'],
                ['머큐리BTC-MER','BTC-MER'],
                ['BTC-BTG','BTC-BTG'],
                ['BTC-ENG','BTC-ENG']               
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

    def self.coinone
        grouped_options = {
            '코인원' => [
                ['비트코인',"btc"],
                ["이더리움", "eth"],
                ["비트캐쉬" ,"bch"],
                ["이더리움클래식" ,"etc"],
                ["비트코인골드(BTG)" ,"btg"],
                ["큐텀","qtum"],
                ["리플","xrp"],
                ["라이트코인","ltc"],
                ["아이오타","iota"]
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
    def self.coinone_getdata(params)
        puts 'coinone'
        puts params
        if(params == nil)
            params= " "
        end
        source = "https://api.coinone.co.kr/ticker?currency="
        source +=params
        data = open(source).read()
        result = JSON.parse(data)
        return result["last"]
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
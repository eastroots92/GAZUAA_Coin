require 'json'
require 'open-uri'
require 'net/http'
require 'openssl'

http = Net::HTTP.new('https://api.binance.com/api/v1/trades?symbol=ENJBTC&limit=1', 443)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
http.cert_store = OpenSSL::X509::Store.new
http.cert_store.set_default_paths
#http.cert_store.add_file('/path/to/cacert.pem')
response = http.get('/api/v1/trades?symbol=ENJBTC&limit=1')

puts response
#http.cert_store = OpenSSL::X509::Store.new
#http.cert_store.set_default_paths
#http.cert_store.add_file('/path/to/cacert.pem')
# ...or:
#cert = OpenSSL::X509::Certificate.new(File.read('mycert.pem'))
#http.cert_store.add_cert(cert)

# source = "https://api.binance.com/api/v1/trades?symbol=ENJBTC&limit=1"
# data = open(http).read()
#response = HTTP.get(http.url)
#put response

#data = JSON.parse(data)


#puts data.first["price"]




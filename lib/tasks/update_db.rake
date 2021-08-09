task :update_db => :environment do
  require 'open-uri'

  currencies_json = JSON.load(URI.open("https://www.cbr-xml-daily.ru/daily_json.js"))
  currencies_json['Valute'].each do |currency|
    @cur = Currency.find_or_initialize_by(num_code: currency[1]['NumCode'])
    @cur.attributes = {
      name: currency[1]['Name'],
      char_code: currency[1]['CharCode'],  
      rate: currency[1]['Value']}
    @cur.save!
  end  
end
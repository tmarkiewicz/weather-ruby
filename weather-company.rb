require 'dotenv'
require 'httparty'

Dotenv.load('.env')

auth = {:username => ENV['WEATHER_COMPANY_USERNAME'], :password => ENV['WEATHER_COMPANY_PASSWORD']}
latitude = "40.014984"
longitude = "-105.270546"
response = HTTParty.get("https://twcservice.mybluemix.net/api/weather/v1/geocode/#{latitude}/#{longitude}/forecast/daily/3day.json", :basic_auth => auth)

forecast_date = response["forecasts"][0]["fcst_valid_local"]
parsed_datetime = Time.parse(forecast_date).strftime('%A, %B %d, %Y')

puts "Forecast for #{parsed_datetime}:"
puts response["forecasts"][0]["narrative"]
puts response["forecasts"][0]["snow_phrase"]
puts response["forecasts"][0]["night"]["narrative"]

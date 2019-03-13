require 'atmo'

client = Atmo::Api.new
if client.authenticate
  # send request to Netatmo's GETSTATIONSDATA API endpoint
  data = client.get_station_data
end

data["body"]["devices"][0]["modules"].each do |device|
  celsius = device["dashboard_data"]["Temperature"].to_s
  fahrenheit = ((celsius.to_i * 9 / 5) + 32).to_s

  # depeding on how many Netatmo modules you have, the following could vary
  if device["type"] == "NAModule1" # my main module
    puts "\n"
    puts "Time: " + Time.at(device["dashboard_data"]["time_utc"]).to_s
    puts "Temperature: " + fahrenheit + " deg F"
    puts "Humidity: " + device["dashboard_data"]["Humidity"].to_s + "%"
    puts "\n"

  elsif device["type"] == "NAModule2" # my weather module
    puts "\n"
    puts "Time: " + Time.at(device["dashboard_data"]["time_utc"]).to_s
    puts "Wind strength: " + device["dashboard_data"]["WindStrength"].to_s
    puts "Wind gust: " + device["dashboard_data"]["GustStrength"].to_s
    puts "\n"

  end
end

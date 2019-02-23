# Weather Company and Netatmo API access in Ruby

Basic demonstration of how to access Weather Company and Netatmo API data using Ruby.

## Setup
If not already installed, you'll need the [bundler gem](https://bundler.io/) for this proejct.

Once bundler is installed, you can install the gems listed in the `Gemfile`

``` bash
$ gem install bundler
```

``` bash
$ bundle install
```

## Weather Company
The next step is to sign up for an account on IBM Cloud to get access to the Weather Company API.

#### Sign up for an IBM Cloud account

#### Add the Weather Company API as a new service

#### Select the free plan

#### Select add credentials and then view the credentials JSON

#### Add your credentials to a .env file
``` ruby
WEATHER_COMPANY_USERNAME=your_username
WEATHER_COMPANY_PASSWORD=your_password
```

#### Find your desired location
In the example file `weather-company.rb`, you'll need to replace the latitude and longitude variables with your own.

A quick way to find the latitude and longitude from a location is [LatLong.net](https://www.latlong.net/)

Once you have your latitude/longitude, enter them as follows:

``` ruby
latitude = "40.014984"
longitude = "-105.270546"
```

You can now run the file from the command line:

``` bash
$ ruby weather-company.rb
```

The output will look like this:

```
Forecast for Friday, February 22, 2019:
Periods of snow. Lows overnight in the upper teens.
1 to 3 inches of snow expected.
Snow this evening will give way to lingering snow showers late. Low 19F. Winds light and variable. Chance of snow 80%. Snow accumulating 1 to 3 inches.
```


## Netatmo
Coming soon!

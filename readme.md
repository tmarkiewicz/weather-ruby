# Weather Company Data and Netatmo API access in Ruby

Basic demonstration of how to access Weather Company Data and Netatmo API data using Ruby.

# Steps for Weather Company Data

> NOTE: This application requires that the following steps be performed on a Mac.

1. [Clone the repo](#1-clone-the-repo)
1. [Create IBM Cloud services](#2-create-ibm-cloud-services)
1. [Configure credentials](#3-configure-credentials)
1. [Run the application](#4-run-the-application)

## 1. Clone the repo

```bash
git clone https://github.com/tmarkiewicz/weather-ruby
cd weather-ruby
```

## 2. Create IBM Cloud services
The next step is to sign up for an account on IBM Cloud. Next, add the Weather Company Data as a new service, selecting the free plan.

* [**Weather Company Data**](https://cloud.ibm.com/catalog/services/weather-company-data)

## 3. Configure credentials

Open the **Weather Company Data** service from the IBM Cloud dashboard. The credentials for the service can be found by selecting the `Service Credentials` tab.

If no credentials exist, select the `New Credential` button to create a new set of credentials.

In the `.env` file, add the `username` value to the `WEATHER_COMPANY_USERNAME` key and `password` value to the `WEATHER_COMPANY_PASSWORD`.

#### Adding your credentials to a .env file
``` ruby
WEATHER_COMPANY_USERNAME=your_username
WEATHER_COMPANY_PASSWORD=your_password
```

#### Find your desired location
In the example file `weather-company.rb`, you'll need to replace the latitude and longitude variables with your own.

A quick way to find the latitude and longitude from a location is [LatLong.net](https://www.latlong.net/)

Once you have your latitude/longitude, enter them as follows in `weather-company.rb`:

``` ruby
latitude = "40.014984"
longitude = "-105.270546"
```

## 4. Run the application

If not already installed, you'll need the bundler gem for this project.

* Install the [Bundler](https://bundler.io/) Ruby gem.

Once bundler is installed, you can install the gems listed in the `Gemfile` by running `bundle install`


``` bash
$ gem install bundler
```

``` bash
$ bundle install
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

# Steps for Netatmo
Coming soon!

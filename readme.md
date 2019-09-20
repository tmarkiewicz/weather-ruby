# Weather Company Data and Netatmo API access in Ruby

Basic demonstration of how to access Weather Company Data and Netatmo API data using Ruby.

## Initial Steps
> NOTE: This application requires that the following steps be performed on a Mac.

Clone the repo:

```bash
$ git clone https://github.com/tmarkiewicz/weather-ruby
$ cd weather-ruby
```

If not already installed, you'll need the bundler gem for this project.

* Install the [Bundler](https://bundler.io/) Ruby gem.

Once bundler is installed, you can install the gems listed in the `Gemfile` by running `bundle install`

``` bash
$ gem install bundler
```

``` bash
$ bundle install
```

## Steps for Weather Company Data

1. [Create IBM Cloud services](#2-create-ibm-cloud-services)
1. [Configure credentials](#3-configure-credentials)
1. [Run the application](#4-run-the-application)

### 1. Create IBM Cloud services
The next step is to sign up for an account on IBM Cloud. Next, add the Weather Company Data as a new service, selecting the free plan.

* [**Weather Company Data**](https://cloud.ibm.com/catalog/services/weather-company-data)

### 2. Configure credentials

Open the **Weather Company Data** service from the IBM Cloud dashboard. The credentials for the service can be found by selecting the `Service Credentials` tab.

If no credentials exist, select the `New Credential` button to create a new set of credentials.

In the `.env` file, add the `username` value to the `WEATHER_COMPANY_USERNAME` key and `password` value to the `WEATHER_COMPANY_PASSWORD`.

##### Adding your credentials to a .env file
``` ruby
WEATHER_COMPANY_USERNAME=your_username
WEATHER_COMPANY_PASSWORD=your_password
```

##### Find your desired location
In the example file `weather-company.rb`, you'll need to replace the latitude and longitude variables with your own.

A quick way to find the latitude and longitude from a location is [LatLong.net](https://www.latlong.net/)

Once you have your latitude/longitude, enter them as follows in `weather-company.rb`:

``` ruby
latitude = "40.014984"
longitude = "-105.270546"
```

### 3. Run the application

Run the `weather-company.rb` file from the command line:

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

## Steps for Netatmo

1. [Create IBM Cloud services](#2-create-ibm-cloud-services)
1. [Configure credentials](#3-configure-credentials)
1. [Run the application](#4-run-the-application)

### 1. Create IBM Cloud services
The next step is to sign up for an account on IBM Cloud. Next, add the Weather Company Data as a new service, selecting the free plan.

* [**Weather Company Data**](https://cloud.ibm.com/catalog/services/weather-company-data)

### 2. Configure credentials

From the **Netatmo Connect** developer portal, sign in with your regular Netatmo account credentials. Once signed in, click on the `Create an App` button. After filling out the required info, click on save. Now that you have an app, click on its icon from the dashboard. Under the Technical Parameters section, you'll see your app's credentials.

In the `.env` file, add the `username` value to the `USERNAME` key and `password` value to the `PASSWORD`. In addition, you'll need to add your `CLIENT_ID` and `CLIENT_SECRET`, all from Netatmo's developer site.

##### Adding your credentials to a .env file
``` ruby
USERNAME=your_email
PASSWORD=your_password
CLIENT_ID=your_client_id
CLIENT_SECRET=your_client_secret
```

### 3. Run the application

Run the `netatmo.rb` file from the command line:

``` bash
$ ruby netatmo.rb
```

The output will look like this:

```
Time: 2019-03-12 14:19:50 -0600
Temperature: 50 deg F
Humidity: 45%
```

## Related resources
* [Create a mobile app with weather forecasting](https://ibm.biz/BdzFnT)
* [Serverless approach to Weather Underground](https://ibm.biz/BdzFnt)
* [Integrate weather information into Watson Assistant](https://ibm.biz/BdzFeB)


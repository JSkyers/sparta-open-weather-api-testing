require "httparty"
require "json"
require_relative "../spec/spec_helper.rb"

class WeatherService
  attr_accessor :weather_results
  include HTTParty

  def get_weather(city_name, api_key)
    @weather_results= JSON.parse(HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city_name}&APPID=#{api_key}").body)
  end

  def get_status
    @weather_results["cod"]
  end

  def get_coordinates
    @weather_results["coord"]
  end

  def get_weather_type
    @weather_results["weather"]
  end

  def get_weather_id
    @weather_results["weather"][0]["id"]
  end

  def get_weather_main
    @weather_results["weather"][0]["main"]
  end

  def get_weather_description
    @weather_results["weather"][0]["description"]
  end

  def get_weather_icon
    @weather_results["weather"][0]["icon"]
  end

  def get_weather_contents
    @weather_results["weather"].first
  end

  def get_latitude
    get_coordinates["lat"]
  end

  def get_longitude
    get_coordinates["lon"]
  end

  def get_base
    @weather_results["base"]
  end

  def get_main_type
    @weather_results["main"]
  end

  def get_main_temp
    @weather_results["main"]["temp"]
  end

  def get_main_pressure
    @weather_results["main"]["pressure"]
  end

  def get_main_humidity
    @weather_results["main"]["humidity"]
  end

  def get_main_temp_min
    @weather_results["main"]["temp_min"]
  end

  def get_main_temp_max
    @weather_results["main"]["temp_max"]
  end

  def get_visibility
    @weather_results["visibility"]
  end

  def get_wind
    @weather_results["wind"]
  end

  def get_clouds
    @weather_results["clouds"]
  end

  def get_dt
    @weather_results["dt"]
  end

  def get_system
    @weather_results["sys"]
  end

  def get_id
    @weather_results["id"]
  end

  def get_name
    @weather_results["name"]
  end

end

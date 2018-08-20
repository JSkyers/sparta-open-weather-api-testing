require 'spec_helper'

describe "Should test weather by city" do

  before (:all) do
    @api_key = ENV["WEATHER_API_KEY"]
    @openweathermap = OpenWeatherMap.new.weather_service
    @openweathermap.get_weather("London", @api_key)
  end

  it "should respond with a status message of 200" do
    expect(@openweathermap.get_status).to eq(200)
    puts @openweathermap.weather_results
  end

  it "should have a coordinates hash" do
    expect(@openweathermap.get_coordinates).to be_a(Hash)
  end

  it "should have a weather array" do
    expect(@openweathermap.get_weather_type).to be_a(Array)
  end

  it "should have an ID Integer within the weather array" do
    expect(@openweathermap.get_weather_id).to be_a(Integer)
  end

  it "should have a main string within the weather array" do
    expect(@openweathermap.get_weather_main).to be_a(String)
  end

  it "should have a description string within the weather array" do
    expect(@openweathermap.get_weather_description).to be_a(String)
  end

  it "should have a icon string within the weather array" do
    expect(@openweathermap.get_weather_icon).to be_a(String)
  end

  it "should be that the weather array has a hash within" do
    expect(@openweathermap.get_weather_contents).to be_a(Hash)
  end

  it "should have a latitude Float within the coordinates hash" do
    expect(@openweathermap.get_latitude).to be_a(Float)
  end

  it "should have a longitude Float within the coordinates hash" do
    expect(@openweathermap.get_longitude).to be_a(Float)
  end

  it "should have a base String" do
    expect(@openweathermap.get_base).to be_a(String)
  end

  it "should have a main hash" do
    expect(@openweathermap.get_main_type).to be_a(Hash)
  end

  it "should have a temperature float within the main hash" do
    expect(@openweathermap.get_main_temp).to be_a(Float)
  end

  it "should have a pressure integer within the main hash" do
    expect(@openweathermap.get_main_pressure).to be_a(Integer)
  end

  it "should have a humidity integer within the main hash" do
    expect(@openweathermap.get_main_humidity).to be_a(Integer)
  end

  it "should have a temperature minimum float within the main hash" do
    expect(@openweathermap.get_main_temp_min).to be_a(Float)
  end

  it "should have a temperature maximum float within the main hash" do
    expect(@openweathermap.get_main_temp_max).to be_a(Float)
  end

  it "should have a visibility Integer" do
    expect(@openweathermap.get_visibility).to be_a(Integer)
  end

  it "should have a wind hash" do
    expect(@openweathermap.get_wind).to be_a(Hash)
  end

  it "should have a clouds hash" do
    expect(@openweathermap.get_clouds).to be_a(Hash)
  end

  it "should have a dt Integer" do
    expect(@openweathermap.get_dt).to be_a(Integer)
  end

  it "should have a system hash" do
    expect(@openweathermap.get_system).to be_a(Hash)
  end

  it "should have a id Integer" do
    expect(@openweathermap.get_id).to be_a(Integer)
  end

  it "should have a name String" do
    expect(@openweathermap.get_name).to be_a(String)
  end

end

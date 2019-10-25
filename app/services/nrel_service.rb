class NrelService

  def initialize(address)
    @address = address
  end

  def closest_station_search
    json_response = conn.get("nearest.json", {location: @address, fuel_type: "ELEC", limit: 1})
    location_data = JSON.parse(json_response.body, symbolize_names: true)
    fuel_station_location = location_data[:fuel_stations].first
  end

  def conn
    Faraday.new(
      url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/',
      params: {'api_key' => ENV['NREL_API_KEY']}
    )
  end
end

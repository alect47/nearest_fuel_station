class NrelService

  def initialize(address)
    @address = address
  end

  # change location to address variable
  def closest_station_search
    binding.pry
    json_response = conn.get("nearest.json", {location: @address, fuel_type: "ELEC", limit: 1})
    location_data = JSON.parse(json_response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(
      url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/',
      params: {'api_key' => ENV['NREL_API_KEY']}
    )
  end
end

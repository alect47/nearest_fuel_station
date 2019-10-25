class GoogleMapsService

  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  # change location to address variable
  def directions_search
    json_response = conn.get("directions/json", {origin: @origin, destination: @destination})
    location_data = JSON.parse(json_response.body, symbolize_names: true)
o = location_data[:routes][0][:legs][0][:steps][0]
  end

  def conn
    Faraday.new(
      url: 'https://maps.googleapis.com/maps/api/',
      params: {'key' => ENV['GOOGLE_MAPS_API_KEY']}
    )
  end
end

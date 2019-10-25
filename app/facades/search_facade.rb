class SearchFacade
  attr_reader :origin, :destination

  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def search_station
    station_data = get_station_data
    station = create_station(station_data)
  end

  def get_station_data
    nrel_api_service.closest_station_search
  end

  def create_station(station_data)
    Station.new(station_data)
  end

  def nrel_api_service
    NrelService.new(@origin)
  end

  def google_maps_api_service
    GoogleMapsService.new(@origin, @destination)
  end
end

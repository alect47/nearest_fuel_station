class SearchFacade
  attr_reader :origin, :destination

  def initialize(origin)
    @origin = origin
  end

  def search_station
    station_data = get_station_data
    station = create_station(station_data)
  end

  def search_direction
    direction_data = get_direction_data
    direction = create_direction(direction_data)
  end

  def get_station_data
    nrel_api_service.closest_station_search
  end

  def get_direction_data
    google_maps_api_service.directions_search
  end

  def create_station(station_data)
    Station.new(station_data)
  end

  def create_direction(direction_data)
    Direction.new(direction_data)
  end

  def nrel_api_service
    NrelService.new(@origin)
  end

  def google_maps_api_service
    @destination = search_station
    GoogleMapsService.new(@origin, @destination.address)
  end
end

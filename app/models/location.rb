class Station
  attr_reader :name, :address, :fuel_type, :access_times, :distance

  def initialize(station_hash)
    @name = station_hash[:name]
    @address = station_hash[:address]
    @fuel_type = station_hash[:fuel_type]
    @access_times = station_hash[:access_times]
    @distance = station_hash[:distance]
  end
end

class Station
  attr_reader :name, :address, :fuel_type, :access_times, :distance

  def initialize(station_hash)
    @name = member_hash[:name]
    @address = member_hash[:address]
    @fuel_type = member_hash[:fuel_type]
    @access_times = member_hash[:access_times]
    @distance = member_hash[:distance]
  end
end

class Station
  attr_reader :name, :address, :fuel_type, :access_times, :distance

  def initialize(station_hash)
    @name = station_hash[:station_name]
    @address = "#{station_hash[:street_address]} #{station_hash[:city]} #{station_hash[:state]} #{station_hash[:zip]}"
    @fuel_type = station_hash[:fuel_type_code]
    @access_times = station_hash[:access_days_time]
    @distance = station_hash[:distance]
  end
end

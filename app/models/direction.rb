class Direction
  attr_reader :distance, :travel_time, :html_instructions

  def initialize(direction_hash)
    @distance = member_hash[:distance]
    @travel_time = member_hash[:travel_time]
    @html_instructions = member_hash[:html_instructions]
  end
end

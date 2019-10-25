class Direction
  attr_reader :distance, :travel_time, :html_instructions

  def initialize(direction_hash)
    @distance = direction_hash[:distance][:text]
    @travel_time = direction_hash[:duration][:text]
    @html_instructions = direction_hash[:html_instructions]
  end
end

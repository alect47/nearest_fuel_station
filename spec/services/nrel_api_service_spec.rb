require 'rails_helper'

describe 'nrel service' do
  it 'can get nearest station' do
    service = NrelService.new("1331+17th+St+Denver+CO+80202")

    info = service.closest_station_search

    expect(info).to be_a(Array)
    expect(info.last).to have_key(:name)
  end
end

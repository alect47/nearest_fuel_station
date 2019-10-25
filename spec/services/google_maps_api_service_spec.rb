require 'rails_helper'

describe 'nrel service' do
  it 'can get nearest station' do
    service = GoogleMapsService.new("1331 17th St LL100, Denver, CO 80202", "1225 17th St. Denver CO 80202")

    info = service.directions_search

    expect(info).to be_a(Hash)
    expect(info).to have_key(:distance)
    expect(info).to have_key(:duration)
    expect(info).to have_key(:html_instructions)
  end
end

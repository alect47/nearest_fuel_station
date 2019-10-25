require 'rails_helper'

describe 'nrel service' do
  it 'can get nearest station' do
    service = NrelService.new("1331 17th St LL100, Denver, CO 80202")

    info = service.closest_station_search
    binding.pry
    expect(info).to be_a(Hash)
    expect(info).to have_key(:access_days_time)
    expect(info).to have_key(:fuel_type_code)
    expect(info).to have_key(:station_name)
    expect(info).to have_key(:city)
    expect(info).to have_key(:state)
    expect(info).to have_key(:street_address)
    expect(info).to have_key(:zip)
    expect(info).to have_key(:country)
    expect(info).to have_key(:distance)
  end
end

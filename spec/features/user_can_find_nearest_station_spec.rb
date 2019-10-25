require 'rails_helper'

describe "user can find nearest fuel station" do
  scenario "they can search using dropdown" do
    visit '/'

    select "Turing", from: :location
    click_on 'Find Nearest Station'

    expect(current_path).to eq '/search'

    within '.station' do
      expect(page).to have_content("Name: abd")
      expect(page).to have_content("Address: abd")
      expect(page).to have_content("Fuel Type: abd")
      expect(page).to have_content("Distance: abd")
      expect(page).to have_content("Access Times: abd")
    end

    expect(page).to have_content("Travel time/distance: 0.1 miles")
    expect(page).to have_content("Head southeast on 17th St toward Larimer St etc")
  end
end


# Then I should see the closest electric fuel station to me.

# I should also see:
# - the distance of the nearest station
# - the travel time from Turing to that fuel station (should be 0.1 miles)
# - The HTML direction instructions to get to that fuel station
#   "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"

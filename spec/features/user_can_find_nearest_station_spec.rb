require 'rails_helper'

describe "user can find nearest fuel station" do
  scenario "they can search using dropdown" do
    visit '/'

    select "Turing", from: :location
    click_on 'Find Nearest Station'

    expect(current_path).to eq '/search'

    within '.station' do
      expect(page).to have_content("Name: Seventeenth Street Plaza")
      expect(page).to have_content("Address: 1225 17th St. Denver CO 80202")
      expect(page).to have_content("Fuel Type: ELEC")
      expect(page).to have_content("Distance: 0.0934")
      expect(page).to have_content("Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
    end
    within '.directions' do
      expect(page).to have_content("Travel time: 1 min")
      expect(page).to have_content("Distance: 0.1 mi")
      expect(page).to have_content("<b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>")
    end
  end
end

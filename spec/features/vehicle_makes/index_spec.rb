# [ ] done

# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
require 'rails_helper'

RSpec.describe "vehicle makes index page" do
    before(:each) do
        @tesla = VehicleMake.create!(name: "TESLA", ev: true, year_established: 2003)
        @hyundai = VehicleMake.create!(name: "Hyundai", ev: false, year_established:1967)
        @nissan = VehicleMake.create!(name: "Nissan", ev: false, year_established: 1933)
        @audi = VehicleMake.create!(name: "Audi", ev: false, year_established: 1910)
    end
    
    
    describe 'user story 1' do
        it "I see the name of each parent record in the system" do
            visit "/vehicle_makes"

            expect(page).to have_content(@tesla.name)
            expect(page).to have_content(@hyundai.name)
            expect(page).to have_content(@nissan.name)
            expect(page).to have_content(@audi.name)
        end
    end
end
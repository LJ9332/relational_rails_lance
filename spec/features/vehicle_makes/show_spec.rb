require 'rails_helper'

RSpec.describe "vehicle makes show page" do
    describe "user story 2" do
        before(:each) do
            @tesla = VehicleMake.create!(name: "TESLA", ev: true, year_established: 2003)
            @hyundai = VehicleMake.create!(name: "Hyundai", ev: false, year_established:1967)
            @nissan = VehicleMake.create!(name: "Nissan", ev: false, year_established: 1933)
            @audi = VehicleMake.create!(name: "Audi", ev: false, year_established: 1910)
        end

        it "renders a show page" do
            vehicle_make = VehicleMake.create!(name: "TESLA", ev: true, year_established: 2003)
            visit "/vehicle_makes/#{vehicle_make.id}"

            expect(page).to have_content(@tesla.name)
            expect(page).to have_content(@tesla.ev)
            expect(page).to have_content(@tesla.year_established)
            expect(page).to_not have_content(@hyundai.name)
            expect(page).to_not have_content(@hyundai.ev)
            expect(page).to_not have_content(@hyundai.year_established)
            # expect(page).to have_content(@nissan.name)
            # expect(page).to have_content(@nissan.ev)
            # expect(page).to have_content(@nissan.year_established)
            # expect(page).to have_content(@audi.name)
            # expect(page).to have_content(@audi.ev)
            # expect(page).to have_content(@audi.year_established)
        end
    end
end
require 'rails_helper'

RSpec.describe "make models index page" do
    before(:each) do
        @tesla = VehicleMake.create!(name: "TESLA", ev: true, year_established: 2003)
        @hyundai = VehicleMake.create!(name: "Hyundai", ev: false, year_established:1967)
        @nissan = VehicleMake.create!(name: "Nissan", ev: false, year_established: 1933)
        @audi = VehicleMake.create!(name: "Audi", ev: false, year_established: 1910)

        @model_1 = @tesla.model_types.create!(name: "Model Y", year_made: 2016, naturally_asprirated: false, forced_induction: false, horsepower: 295, mileage: 66000, vehicle_make_id: 1)
        @model_2 = @hyundai.model_types.create!(name: "Veloster Turbo", year_made: 2014, naturally_asprirated: false, forced_induction: true, horsepower: 201, mileage: 123000, vehicle_make_id:2)
        @model_3 = @nissan.model_types.create!(name: "GTR R35", year_made: 2020, naturally_asprirated: true, forced_induction: false, horsepower: 562, mileage: 25000, vehicle_make_id:3)
        @model_4 = @audi.model_types.create!(name: "R8", year_made: 2018, naturally_asprirated: false, forced_induction: true, horsepower: 610, mileage: 38650, vehicle_make_id:4)
    end

    it "shows all of the names of the model types for the vehicle makes" do
        visit "/vehicle_makes/#{@tesla.id}/model_types"
    
        expect(page).to have_content(@model_1.name)
        expect(page).to_not have_content(@model_2.name)
        expect(page).to_not have_content(@model_3.name)
        expect(page).to_not have_content(@model_4.name)
    end
end
class VehicleMakesController < ApplicationController
    def index
        @vehicle_makes = VehicleMake.all
    end
end
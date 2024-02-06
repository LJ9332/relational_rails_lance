class VehicleMakesController < ApplicationController
    def index
        @vehicle_makes = VehicleMake.all
    end

    def show
       
        @vehicle_makes = VehicleMake.find(params[:id])
    end
    
end
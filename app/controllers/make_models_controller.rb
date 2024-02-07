class MakeModelsController < ApplicationController
    def index
        @vehicle_make = VehicleMake.find(params[:vehicle_make_id])
        @model_types = @vehicle_make.model_types
    end
end
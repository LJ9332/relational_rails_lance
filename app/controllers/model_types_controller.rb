class ModelTypesController < ApplicationController
    def index
        @model_types = ModelType.all
    end

    def show
        @model_types = ModelType.find(params[:id])
    end
end
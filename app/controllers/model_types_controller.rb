class ModelTypesController < ApplicationController
    def index
        @models = ModelType.all
    end

    def show
        @model = ModelType.find(params[:id])
    end
end
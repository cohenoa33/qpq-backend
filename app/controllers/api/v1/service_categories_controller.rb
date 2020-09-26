class Api::V1::ServiceCategoriesController < ApplicationController
    def index
        @service_categories = Service_Categories.all 
        render json: @service_categories
    end

    def show 
        @service_category = Service_Categories.find_by(params[:id])
    end
end

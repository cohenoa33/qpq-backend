class Api::V1::CategoriesController < ApplicationController

    def index 
        @categories = Categories.all
        render json: @categories
    end

    def show 
        @categorie = Categories.find_by(params[:id])
        render json: @categories
    end

end

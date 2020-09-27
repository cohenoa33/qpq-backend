class Api::V1::ServicesController < ApplicationController
    before_action :find_service, only: [:show, :update, :destroy]
    def index 
        @services = Service.all
        render json: @service
    end

    def show
        if @service
          render json: @service
        else
          render json: { message: 'This Service does not exist' }
        end
      end


    def create 
        @service = Service.create(service_params)
        render json: @service
    end

    def update 
        @service.update(service_params)
        @service.save
        render json: @service

    end

    def destroy 
        @service.destroy
        render json: {message: "Successfully deleted the service"}
      end

    
    private 
    def service_params
        params.require(:service).permit(:name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value)   
    end

    def find_service 
        @service = @Service.find(params[:id])
        render json: @service
    end
end

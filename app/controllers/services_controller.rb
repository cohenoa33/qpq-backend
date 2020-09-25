class Api::V1::ServicesController < ApplicationController
 
    def index 
        @service = Service.all
    end


    def create 
        @service = Service.create(service_params)
        render json: @service
    end

    def update 
        @service.update(params.require(:service).permit(:name, :img_url, :value))
        render json: @service
        # needs more??

    end

    def destroy 
        @service.destroy
        render json: {message: "Successfully deleted the service"}
      end

    
    private 
    def service_params
        params.require(:service).permit(:name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value)   
    end

    def find_user 
        @service = @Service.find(params[:id])
        render json: @service
    end


end

class Api::V1::ServicesController < ApplicationController

    def index 
        @service = Service.all
        render json: @service
    end

    def show
        @service = Service.find_by(find_service)
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
        @service = Service.find(service_params)
        @service.update(service_params)
        @service.save
        render json: @service
        # needs more??

    end

    def destroy 
        @service = Service.find(service_params)
        @service.destroy
        render json: {message: "Successfully deleted the service"}
      end

    
    private 
    def service_params
        params.require(:service).permit(:name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value)   
    end

    def find_service 
        @service = @Service.find(:id params[:id])
        render json: @service
    end
end

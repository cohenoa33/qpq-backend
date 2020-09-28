class Api::V1::ServicesController < ApplicationController
    # before_action :find_service, only: [:show, :update, :destroy]

    def index 
        services = Service.all
        render json: services
    end

    def show
        service = Service.find_by(id: params[:id])
        if service
          render json: service
        else
          render json: { message: 'This service does not exist' }
        end
      end

    def create
        service = Service.create(service_params)
        if service.valid?
            render json: {service: ServiceSerializer.new(service) }, status: :created
        else
            render json: {error: "Service did not create!"}
        end
    end

    def update 
        service.update(service_params)
        service.save
        render json: service
    end

    def destroy 
        service.destroy
        render json: {message: "Successfully deleted the service"}
      end

    
    private 
    def service_params
        params.require(:service).permit(:name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value, :user_id)   
    end

    def find_service 
        service = service.find(params[:id])
        render json: service
    end
end

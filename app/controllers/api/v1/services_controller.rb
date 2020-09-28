class Api::V1::ServicesController < ApplicationController
<<<<<<< HEAD
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
=======
  def index
    services = Service.all
    render json: services
  end

  def show
    service = Service.find_by(id: params[:id])
    if service
      render json: service
    else
      render json: { message: 'This ID does not exist' }
    end
  end

  def create
    service = Service.create(service_params)
    if service.valid?
      render json: { service: ServiceSerializer.new(service) }, status: :created
    else
      render json: { error: 'failed to create service' }, status: :not_acceptable
>>>>>>> 944512a90dfbd5927184de3ecdc90a8859616ee4
    end
  end

<<<<<<< HEAD
    def update 
        service.update(service_params)
        service.save
        render json: service
=======
  def update
    service = Service.find_by(id: params[:id])

    if service.update(service_params)
      render json: service
    else
      render json: { error: 'Something went wrong' }
>>>>>>> 944512a90dfbd5927184de3ecdc90a8859616ee4
    end
  end

<<<<<<< HEAD
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
=======
  def destroy
    service = Service.find_by(id: params[:id])
    service.destroy

    render json: { message: 'deleted' }
  end

  private

  def service_params
    params.require(:service).permit(:name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value, :user_id)
  end
>>>>>>> 944512a90dfbd5927184de3ecdc90a8859616ee4
end

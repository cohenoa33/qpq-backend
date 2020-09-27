class Api::V1::ServicesController < ApplicationController
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
    end
  end

  def update
    service = Service.find_by(id: params[:id])

    if service.update(service_params)
      render json: service
    else
      render json: { error: 'Something went wrong' }
    end
  end

  def destroy
    service = Service.find_by(id: params[:id])
    service.destroy

    render json: { message: 'deleted' }
  end

  private

  def service_params
    params.require(:service).permit(:name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value)
  end
end

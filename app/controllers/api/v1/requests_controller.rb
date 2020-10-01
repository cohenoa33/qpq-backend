class Api::V1::RequestsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  # comment this out when testing controllers

  def index
    # approved_requests = Request.all.where(status: 'approved')
    # @requests = []
    # approved_requests.each do |request|
    #   if requests.requester.id == current_user.id
    #     @requests << request
    #   elsif requests.provider.id == current_user.id
    #     @requests << request
    #   end
    # end
    # @requests
    # render json: @request
    requests = Request.all
    render json: requests
  end

  def show
    request = Request.find_by(params[:id])
    render json: request
  end

  def create
    request = Request.create(request_params)
    if request.valid?
      render json: { request: RequestSerializer.new(request) }, status: :created
    else
      render json: { error: 'failed to create request' }, status: :not_acceptable
    end
  end

  def update
    request = Request.find_by(id: params[:id])

    if request.update(request_params)
      render json: request
    else
      render json: { error: 'Something went wrong' }
    end
  end

  # def destroy
  #   request = Request.find_by(id: params[:id])
  #   request.destroy

  #   render json: { message: 'deleted' }
  # end

  private

  def request_params
    params.require(:request).permit(:status, :message, :response_service_id, :requested_service_id)
  end
end

class Api::V1::RequestsController < ApplicationController

    def index
        approved_requests = Request.all.where(status: "approved")
        @requests = []
        approved_requests.each do |request|
            if requests.requester.id == current_user.id
                @requests << request
            elsif requests.provider.id == current_user.id
                @requests << request
            end
        end
        @requests
        render json: @request
    end

    def show 
        @request = Request.find_by(params[:id])
        render json: @request
    end

end

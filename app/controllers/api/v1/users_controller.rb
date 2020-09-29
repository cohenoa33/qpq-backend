class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end


def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end
  
    def index
      users = User.all
      render json: users
    end
  
    def show
      user = User.find_by(id: params[:id])
      if user
        render json: user
      else
        render json: { message: 'This ID does not exist' }
      end
    end
  
    # def create
    #   if user.valid?
    #     render json: { user: UserSerializer.new(user) }, status: :created
    #   else
    #     render json: { error: 'failed to create user' }, status: :not_acceptable
    #   end
    # end


  
    def update
      user = User.find_by(id: params[:id])
  
      if user.update(user_params)
        render json: user
      else
        render json: { error: 'Something went wrong' }
      end
    end
  
    def destroy
      user = User.find_by(id: params[:id])
      user.destroy
  
      render json: { message: 'deleted' }
    end
  
    private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :street, :city, :state, :zipcode, :birth_year, :img_url, :email, :password, :password_confirmation)
    end
  
end

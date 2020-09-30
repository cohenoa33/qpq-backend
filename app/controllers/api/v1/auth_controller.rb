class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  # def create
  #   user = User.find_by(email: user_login_params[:email])
  #   #User#authenticate comes from BCrypt
  #   if user && user.authenticate(user_login_params[:password])
  #     byebug
  #     # encode token comes from ApplicationController
  #     token = encode_token({ user })
  #     render json: { user.id:  jwt: token }, status: :accepted
  #   else
  #     render json: { message: 'Invalid email or password' }, status: :unauthorized
  #   end
  # end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      my_token = encode_token({ user_id: user.id })
      render json: { id: user.id, email: user.email, token: my_token }
    else
      render json: { error: 'That user could not be found' }, status: 401
    end
  end

  private

  def user_login_params
    # params { user: {email: 'Chandler Bing', password: 'hi' } }
    params.require(:auth).permit(:email, :password)
  end
end

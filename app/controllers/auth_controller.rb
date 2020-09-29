class AuthController < ApplicationController

  before_action :require_login


  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: { email: user.email, id: user.id, jwt: token, message: "Successful auth"}
    else
      render json: { error: 'Unable to log in', status: 401 }
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: "No User is logged in"}
    end 
  end

  def logged_in?
    !!session_user
  end

  def require_login
    render json: {message: 'Please login'}, status: :unauthorized unless logged_in?
  end

end
class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]
 
  def login
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      @token = encode_token( { user_id: @user.id } )
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end
  
  def sign_up
    user = User.new(user_login_params)
    if user.valid?
      user.save
      render json: { user: user, username: user.username, token: generate_token(id: user.id)}
    else
      render json: { message: "Invalid username/password/email"}
    end
  end

  def validate
    render json: { user: UserSerializer.new(current_user)}
  end

  private
 
  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end
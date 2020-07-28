class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create , :update]


  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token( { user_id: @user.id } )
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.update(user_params)
        render json: @user
    else
        render json: { message: "Failure" }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username,:email ,:password)
  end
 
 
# def details_params
#   params.permit(:name,:username,:email)
# end

end
class UsersController < BaseController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    render json: @users

  end

  # GET /users/1
  # GET /users/1.json
  def show

    respond_with @users
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    respond_with @user.destroy, status: :ok
  end

  #Create the relationship between users

  def following
      @title = "Following"
      @user = User.find(params[:id])
      @users = @user.following

      respond_with @users
    end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers

    respond_with @users
  end






  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:full_name, :username, :password, :email, :bio, :website, :phonenumber, :image)
    end
end

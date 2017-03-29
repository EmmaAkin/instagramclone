class RelationshipsController < BaseController
  before_action :set_relationship, only: [:show, :update, :destroy]

  # # GET /relationships
  # # GET /relationships.json
  # def index
  #   @relationships = Relationship.all
  # end

  # # GET /relationships/1
  # # GET /relationships/1.json
  # def show
  # end

  # POST /relationships
  # POST /relationships.json
  # def create
  #   @relationship = Relationship.new(relationship_params)

  #   if @relationship.save
  #     render :show, status: :created, location: @relationship
  #   else
  #     render json: @relationship.errors, status: :unprocessable_entity
  #   end
  # end

    def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)

    respond_with @user
    # respond_to do |format|
    #   format.html {redirects_to @user}
    #   format.js
    # end
  end


  # DELETE /relationships/1
  # DELETE /relationships/1.json
  # def destroy
  #   @relationship.destroy
  # end



  #this deletes a relationship in the database table between the logged
  #in user and the other user
    def destroy
      rel = current_user.active_relationships.find_by(followed_id: params[:id])
    @user = Relationship.find(rel).followed
     current_user.unfollow(@user)

     respond_with @user
    # respond_to do |format|
    #   format.html {redirects_to @user}
    #   format.js
    # end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_relationship
    #   @relationship = Relationship.find(params[:id])
    # end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def relationship_params
    #   params.require(:relationship).permit(:follower_id, :followed_id)
    # end


  def user_signed_in?
    unless session[:user_id]
      flash[:notice] = "Please log in!"
      redirect_to login_path
      return false
    else
      return true
    end
  end

end


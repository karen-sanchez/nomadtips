class UsersController < ApplicationController

	# before_action :authenticate_user!
	
  def index
  end

  def show
    @user = User.find_by_username(params[:id])
    @post = current_user.posts.order("created_at DESC")
  end

end

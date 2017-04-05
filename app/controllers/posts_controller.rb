class PostsController < ApplicationController

	before_action :authenticate_user!, :except => [:index]

	def index
		@post = Post.all.order("created_at DESC")
	end

	def new
		@post = Post.new
		# CS.states(:us) = CS.states(:us)
	end

	def create
	  @post = Post.new(post_params)
	  if @post.save
	  	flash[:notice] = "Success"
	    redirect_to '/'
	  else
	  	flash[:notice] = "Not saved"
	    render 'new'
	  end
	end

	def show
		@post = current_user.posts.order("created_at DESC")
		@user = current_user.username
	end

	def edit
	 @post = Post.find(params[:id])
	end

	def update
	 @post = Post.find(params[:id])

		if @post.update(params[:post].permit(:image, :location, :price, :rating, :description))
			flash[:notice] = "Success"
			redirect_to '/'
		else
			flash[:notice] = "Not saved"
			render '/'
		end
	end

	def destroy
	  @post = Post.find(params[:id])
	      if @post.destroy
	        flash[:notice] = "Post has been successfully deleted"
	        redirect_to '/'
	     else
	        flash[:alert] = "We were unable to delete your post"
	        redirect_to '/'
	     end
	end 	

	private
	 def post_params
	  params.require(:post).permit(:id, :user_id, :image, :location, :price, :rating, :description).merge(user: current_user)
	 end   

end

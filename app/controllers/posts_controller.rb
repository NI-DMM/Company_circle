class PostsController < ApplicationController
	before_action :authenticate_user!

	def show
		@post = Post.find(params[:id])
		@user = @post.user
		@post_new = Post.new
		@post_comment = PostComment.new
	end

	def index
		@posts = Post.page(params[:page]).per(10)
		@post = Post.new
		@user = current_user
		@users = User.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			tags = Vision.get_image_data(@post.image)
    		tags.each do |tag|
      		@post.tags.create(name: tag)
    		end
			redirect_to posts_path, notice: "投稿しました。"
		else
		   @posts = Post.all
		   @user = current_user
		   render "new"
		end
	end

	def edit
		@post = Post.find(params[:id])
		if @post.user_id != current_user.id
		   redirect_to posts_path, alert: '不正なアクセスです。'
		end
	end

	def update
		@post = Post.find(params[:id])
    	if @post.update(post_params)
      	redirect_to posts_path(@post.id), notice: '更新しました。'
    	else
      	render :edit
    	end
	end


 	def destroy
   		@post = Post.find(params[:id])
    	@post.destroy
    	redirect_to posts_path
  	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :image)
	end
	
end

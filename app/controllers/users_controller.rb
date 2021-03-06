class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
		@posts = @user.posts
		@post = Post.new
	end

	def index
		@users = User.page(params[:page]).per(10)
		@post = Post.new
		@user = current_user
	end

	def edit
		@user = User.find(params[:id])
		if @user.id != current_user.id
		redirect_to user_path(current_user.id), alert: "不正なアクセスです。"
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
		redirect_to user_path(@user.id), notice: "更新しました。"
		else
		render "edit"
	    end
	end

	def destroy
    	@user = User.find(params[:id])
    	@user.destroy
    	redirect_to root_path
  	end

	def followings
      @user  = User.find(params[:id])
      @users = @user.followings
      render 'show_follow'
  	end

  	def followers
      @user  = User.find(params[:id])
      @users = @user.followers
      render 'show_follower'
    end

	private

	def user_params
		params.require(:user).permit(:name, :section_name, :position_name, :email, :introduction, :profile_image, :relationship_status)
	end

end

class PostCommentsController < ApplicationController

	def create
  		post = Post.find(params[:post_id])
    	comment = current_user.post_comments.new(post_comment_params)
    	comment.post_id = post.id
    	if comment.save
      	redirect_back(fallback_location: root_path)
    	else
      	redirect_back(fallback_location: root_path)
    	end
	end

	def destroy
		PostComment.find_by(id: params[:id], post_id: params[:post_id]).destroy
		redirect_to post_path(params[:post_id])
	end

	private
	def post_comment_params
		params.require(:post_comment).permit(:comment)
	end
	
end

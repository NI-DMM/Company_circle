class SearchesController < ApplicationController

	def search
		@word = params[:word]
		@range = params[:range]

		if @range == '1'
			@users = User.search(@word).page(params[:page]).per(10)
		else
		   @posts = Post.search(@word).page(params[:page]).per(10)
		end
	end
end

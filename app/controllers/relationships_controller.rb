class RelationshipsController < ApplicationController

	def create
    @user = User.find(params[:follow_id].to_i)
    following = current_user.relationships.build(follow_id: @user.id)
    following.save
    flash[:success] = 'ユーザーのフォローに成功しました'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @user = User.find(params[:id].to_i)
    following = current_user.relationships.find_by(follow_id: @user.id)
    following.destroy
    flash[:success] = 'ユーザーのフォローを解除しました'
    redirect_back(fallback_location: root_path)
  end

end

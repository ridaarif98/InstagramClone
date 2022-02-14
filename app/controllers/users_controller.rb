class UsersController < ApplicationController
  def index; end

  def show
    @user = User.where(id: params[:id]).includes(:posts).take
    @comment = Comment.new
  end

  def follow_account
    follower_id = params[:follow_id]
    if Follower.create(follower_id: current_user.id, following_id: follower_id)
      flash[:notice] = 'Follow user successfully.'
    else
      flash[:danger] = 'Unable to follow'
    end
  end
end

class UsersController < ApplicationController
  def index; end

  def show
    @posts = Post.where(user_id: current_user.id)
  end
end

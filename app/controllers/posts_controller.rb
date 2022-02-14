class PostsController < ApplicationController
  def index
    @posts = Post.all
    @comment = Comment.new
    following_ids = Follower.where(follower_id: current_user.id).map(&:following_id)
    following_ids << current_user.id
    @follwers_suggestion = User.where.not(id: following_ids)
    
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Post created successfully.'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:text, :image, :user_id)
  end
end

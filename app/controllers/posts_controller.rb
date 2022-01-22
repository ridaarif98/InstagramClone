class PostsController < ApplicationController

    def index
        @posts = Post.where(user_id: current_user.id);
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

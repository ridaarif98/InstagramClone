class CommentsController < ApplicationController
   
  
    def create
      # @post = Post.find(params[:post_id])
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id if user_signed_in?
      if @comment.save
        flash[:notice] = 'Comment added successfully.'
        redirect_back(fallback_location: root_path)
      
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:text, :post_id)
    end
  end
  
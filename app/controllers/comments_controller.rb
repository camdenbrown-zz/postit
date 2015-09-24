class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comments_params)

    if @comment.save
      flash[:notice] = "A new comment has been created."
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end

end

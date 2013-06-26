class CommentsController < ApplicationController
  before_filter :authenticate_user!, only: [ :create, :destroy ]

  def index
    @comments = @user.comments
  end

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params[:comment])
  	@comment.save

	redirect_to @post
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.post
  end
end

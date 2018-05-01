class PostsController < ApplicationController
  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
      # redirect_to ''
      flash[:success] = "Successful signup!"
      redirect_to posts_path(id: @post.id)
      # Handle a successful save.
    else
      render 'new'
    end
  end

private

    def post_params
      params.require(:post).permit(:title, :content, :price, :mobile, :email, :name)
    end
end

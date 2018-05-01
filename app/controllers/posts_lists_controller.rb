class PostsListsController < ApplicationController
  def show
    @posts = Post.all
  end
end

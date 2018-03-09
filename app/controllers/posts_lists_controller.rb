class PostsListsController < ApplicationController
  def show
    @posts = Posts.all
  end
end

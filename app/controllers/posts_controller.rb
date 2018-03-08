class PostsController < ApplicationController
  def show
  	@posts = Posts.find(params[:id])
  end
end

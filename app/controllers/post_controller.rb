class PostController < ApplicationController
 def show
   @post = Post.find(:all)
 end
end

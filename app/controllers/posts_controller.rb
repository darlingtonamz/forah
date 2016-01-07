class PostsController < ApplicationController
  def index
  	@posts = Post.sorted.top50
  end

  def new
  end
end

class PostsController < ApplicationController
  def index
  	@posts = Post.sorted.top50
  end

  def new
  	authenticate_user
  	@post = Post.new
  end

  def create
  	authenticate_user
  	@post = Post.new(post_params)
  	@post.user_id = 1

  	if @post.save
  		redirect_to(action: 'index')
  	else
  		render('new')
  	end
  end

  def show
  	@post = Post.find_by_id(params[:id])
  	@favorites = @post.favorites ||= []
  	@votes = @post.votes ||= []
  	@user = User.find_by_id(@post.user_id)
  end


  private
  	def post_params
  		params.require(:post).permit(:title, :content)
  	end

  	def authenticate_user
	    unless current_user
	      redirect_to '/users/sign_in'
	    end
	  end
end

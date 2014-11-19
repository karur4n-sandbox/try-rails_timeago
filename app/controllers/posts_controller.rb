class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = params.require(:post).permit(:title, :author)
    Post.create(post)
    redirect_to root_path
  end
end

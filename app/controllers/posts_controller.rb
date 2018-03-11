class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Dziękujemy za wpis!"
          redirect_to posts_path
        end
        format.js { }
      end
    else
      render action: 'new'
    end
  end

  def surprise

  end

  private

  def post_params
    params.require(:post).permit(:author, :body)
  end
end

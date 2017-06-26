class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # should add conditional error handling in case .create fails, re-render 'new' view on failure
    # you should remove the ! for the deployed app. If the post fails to be created, your application will crash
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    # should have conditional error handling in case .update fails, re-render 'edit' view on failure
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  #post params are the things the post HAS, that we can access.

  ## not only that, but it will permit only the fields/hash-keys you specify as arguments to permit
  private
    # ruby-style: indent everything in a private scope
    def post_params
      params.require(:post).permit(:title, :body, :glass)
    end

end

class PostsController < ApplicationController
  before_action :authenticate_user!,except: [:show,:index]
  def index
    @posts = Post.all.order(:updated_at).reverse_order
  end

  def show
    @post = Post.find(params[:id])
    @post.comments
    user_id = @post.user_id
    @email= User.find(user_id).email
  end

  def new
    @post=Post.new
  end

  def edit
    @post=Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
     render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    post_time=@post.created_at
    time_diff=Time.now-post_time
    if (time_diff < 600)
      if @post.update(post_params)
        redirect_to @post
      else
        render 'edit'
      end
    else
      redirect @post
      flash[:alert]="Cannot update after 10 minutes of creation"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:text)
  end

end

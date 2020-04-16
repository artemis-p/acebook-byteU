class WallController < ApplicationController

  def show
    user_id = params[:id]
    @posts = Post.where(wall_id: user_id)
    @wall_id = user_id
    render 'posts/index'
  end

  def index
    @user = User.all
  end

end

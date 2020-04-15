class WallController < ApplicationController

  def show
    user_id = params[:id]
    # puts "###############"
    # p user_id
    # puts "###############"
    @posts = Post.where(wall_id: user_id)
    # puts "**********"
    # p 'wall_id'
    # puts "**********"
    # puts "--------"
    # p @posts
    # puts "--------"
    render 'posts/index'
  end

  def index
    @user = User.all
  end

end

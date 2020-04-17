# frozen_string_literal: true

class WallController < ApplicationController
  before_action :authenticate_user!
  def show
    user_id = params[:id]
    @posts = Post.where(wall_id: user_id).order(:updated_at).reverse_order
    @wall_id = user_id
    render 'posts/index'
  end

  def index
    @user = User.all
  end
end

class PostsController < ApplicationController
  def index
    @posts = Post.all
    if current_user
      @user = current_user
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end

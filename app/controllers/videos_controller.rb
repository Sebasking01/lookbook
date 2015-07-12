class VideosController < ApplicationController
  def index
    @videos = Video.all
    if current_user
      @user = current_user
    end
  end

  def new
  end

  def show
  end

  def create
  end
end

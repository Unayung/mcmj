# -*- encoding : utf-8 -*-
class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      redirect_to videos_path
    else
      redirect_to new_video_path
    end
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end
end

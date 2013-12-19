# -*- encoding : utf-8 -*-
class VideosController < ApplicationController
  before_filter :require_is_admin

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to root_path, :notice => "Video Saved"
    else
      flash[:warning] = "Something went wrong :<"
      render :new
    end
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

  private

  def video_params
    params.require(:video).permit(:author, :note, :url, :iframe_code)
  end
end

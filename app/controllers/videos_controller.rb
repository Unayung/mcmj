# -*- encoding : utf-8 -*-
class VideosController < ApplicationController
  before_filter :require_is_admin, :except => :index

  def index
    if params[:q].present?
      @query_string = params[:q][:title_cont]
      @videos = @search.result.paginate(:per_page => 10, :page => params[:page])
    else
      @videos = Video.paginate(:page => params[:page], :per_page => 10).order("id DESC")
    end
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to new_video_path, :notice => "影音已新增"
    else
      redirect_to new_video_path
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      redirect_to edit_video_path(@video), :notice => "影音已修改"
    else
      render :action => "edit"
    end
  end

  def delete
    
  end

  private

  def video_params
    params.require(:video).permit(:author, :note, :url, :iframe_code, :title, :recommendation)
  end

end

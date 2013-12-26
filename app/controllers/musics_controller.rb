# -*- encoding : utf-8 -*-
class MusicsController < ApplicationController
  before_filter :require_is_admin, :except => :index

  def index
    @musics = Music.all.order("id DESC")
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to root_path, :notice => "音樂已新增"
    else
      redirect_to new_music_path
    end
  end

  private

  def music_params
    params.require(:music).permit(:url, :title, :author)
  end
end

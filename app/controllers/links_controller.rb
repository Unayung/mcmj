# -*- encoding : utf-8 -*-
class LinksController < ApplicationController
  before_filter :require_is_admin, :except => :index

  def index
    @links = Link.all.order("id DESC")
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path
    else
      redirect_to new_link_path
    end
  end

  private

  def link_params
    params.require(:link).permit(:url, :title, :description)
  end
end

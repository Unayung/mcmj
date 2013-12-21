class ImageCreationsController < ApplicationController
  before_filter :require_is_admin, :except => :index
  def index
    @image_creations = ImageCreation.all
  end

  def new
    @image_creation = ImageCreation.new
  end

  def create
    @image_creation = ImageCreation.new(image_creation_params)

    if @image_creation.save
      redirect_to new_image_creation_image_path(@image_creation)
    else
      redirect_to new_image_creation_path
    end
  end

  private

  def image_creation_params
    params.require(:image_creation).permit(:original_url, :title, :description, :author, :author_link)
  end
end

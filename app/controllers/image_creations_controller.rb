class ImageCreationsController < ApplicationController
  before_filter :require_is_admin, :except => :index
  def index
    @image_creations = ImageCreation.order("id DESC")
  end

  def new
    @image_creation = ImageCreation.new
  end

  def show
    # @image_creation = ImageCreation.find_by_url(params[:id])
    @image_creation = ImageCreation.find(params[:id])
    set_page_title @image_creation.title
    set_page_image @image_creation.images.first.image.url
    if @image_creation.description.present?
      set_page_description @image_creation.description
    end
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

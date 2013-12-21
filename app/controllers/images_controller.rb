# -*- encoding : utf-8 -*-
class ImagesController < ApplicationController
  before_filter :find_image_creation

  def new 
    @object_new = @image_creation.images.build    # needed for form_for --> gets the path
  end

  def index
    @images = @image_creation.images

    render :json => @images.collect { |p| p.to_jq_upload }.to_json
  end

  def show
    @image = @image_creation.images.find(params[:id])
  end

  def create
    @image = @image_creation.images.build
    @image.image = params[:image_creation_images][:image]
    if @image.save
      respond_to do |format|
        format.html {                                         #(html response is for browsers using iframe sollution)
          render :json => [@image.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        # format.json {
        #   render :json => [@image.to_jq_upload].to_json
        # }
        format.json {
          render json: {files: [@image.to_jq_upload]}, status: :created
        }
      end
    else
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    render :json => true
  end

  protected

  def find_image_creation
    @image_creation = ImageCreation.find(params[:image_creation_id])
  end
end

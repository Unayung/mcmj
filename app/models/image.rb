# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: images
#
#  id                :integer          not null, primary key
#  image_creation_id :integer
#  image             :string(255)
#  image_width       :integer
#  image_height      :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Image < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  belongs_to :image_creation

  mount_uploader :image, ImageUploader

  def to_jq_upload
  {
    "name" => read_attribute(:image),
    "size" => image.size,
    "url" => image.url,
    "thumbnail_url" => image.tiny.url,
    "delete_url" => image_creation_image_path(image_creation,id),
    "delete_type" => "DELETE",
  }
  end
end

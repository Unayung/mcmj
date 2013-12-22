# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: image_creations
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  author       :string(255)
#  description  :string(255)
#  original_url :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class ImageCreation < ActiveRecord::Base
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images
  # acts_as_url :title

  # def to_param
  #   url # or whatever you set :url_attribute to
  # end
end

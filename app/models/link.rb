# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  url         :string(255)
#  title       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Link < ActiveRecord::Base
  validates :title, :url, presence: true
end

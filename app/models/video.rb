# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  url         :string(255)
#  author      :string(255)
#  title       :string(255)
#  note        :text
#  created_at  :datetime
#  updated_at  :datetime
#  iframe_code :string(255)
#

class Video < ActiveRecord::Base
  validates :iframe_code, presence: true

  def self.recommendation_of_today
    where("recommendation = ?", true).order("id DESC")
  end
end

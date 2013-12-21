# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: musics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  url        :string(255)
#  author     :string(255)
#

class Music < ActiveRecord::Base
end

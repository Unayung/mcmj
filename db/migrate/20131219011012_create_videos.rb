# -*- encoding : utf-8 -*-
class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.string :author
      t.string :title
      t.text :note
      t.timestamps
    end
  end
end

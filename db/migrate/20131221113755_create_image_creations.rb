# -*- encoding : utf-8 -*-
class CreateImageCreations < ActiveRecord::Migration
  def change
    create_table :image_creations do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :original_url
      t.timestamps
    end

    # drop_table :images
  end
end

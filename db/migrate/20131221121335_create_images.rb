# -*- encoding : utf-8 -*-
class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :image_creation_id
      t.string :image
      t.integer :image_width
      t.integer :image_height
      t.timestamps
    end
  end
end

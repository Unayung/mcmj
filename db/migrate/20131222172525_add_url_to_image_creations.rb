class AddUrlToImageCreations < ActiveRecord::Migration
  def change
    add_column :image_creations, :url, :string
  end
end

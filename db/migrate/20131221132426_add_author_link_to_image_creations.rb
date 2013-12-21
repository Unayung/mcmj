class AddAuthorLinkToImageCreations < ActiveRecord::Migration
  def change
    add_column :image_creations, :author_link, :string
  end
end

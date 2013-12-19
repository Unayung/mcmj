class AddIframeCodeToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :iframe_code, :string
  end
end

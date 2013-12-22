class AddRecommendationToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :recommendation, :boolean
  end
end

# -*- encoding : utf-8 -*-
class AddAttrToMusic < ActiveRecord::Migration
  def change
    add_column :musics, :title, :string
    add_column :musics, :url, :string, :unique => true
    add_column :musics, :author, :string
  end
end

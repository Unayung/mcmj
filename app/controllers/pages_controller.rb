# -*- encoding : utf-8 -*-
class PagesController < HighVoltage::PagesController

  def welcome
    @videos = Video.order(:id).reverse
  end

  def link
    
  end

  def music
    
  end
end

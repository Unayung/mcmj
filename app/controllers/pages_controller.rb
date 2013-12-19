# -*- encoding : utf-8 -*-
class PagesController < HighVoltage::PagesController

  def welcome
    @videos = Video.all
  end

end

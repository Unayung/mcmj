# -*- encoding : utf-8 -*-
class PagesController < HighVoltage::PagesController

  def welcome
    # @videos = Video.paginate(:page => params[:page], :per_page => 10).order("id DESC")
    @videos = Video.recommendation_of_today
  end

end

# -*- encoding : utf-8 -*-
module VideosHelper

  def render_video_author_link(video)
    s = ""
    if video.url.present? && video.author.present?
      s += "by "
      s += link_to(video.author, video.url, :target => :blank)
    elsif video.author.present?
      s += "by "
      s += video.author
    end
    s.html_safe
  end
end

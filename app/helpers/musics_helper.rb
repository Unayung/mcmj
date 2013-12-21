# -*- encoding : utf-8 -*-
module MusicsHelper
  def render_music_author(music)
    if music.author.present?
      " - #{music.author}"
    end
  end
end

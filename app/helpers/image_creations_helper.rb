module ImageCreationsHelper

  def render_image_creation_author(image_creation)
    if image_creation.author.present?
      if image_creation.author_link.present?
        "by #{link_to("#{image_creation.author}", "#{image_creation.author_link}", :target => :blank)}".html_safe
      else
        "by #{image_creation.author}"
      end
    end
  end

  def render_image_creation_origin(image_creation)
    if image_creation.original_url.present?
      link_to("原始出處", image_creation.original_url, :target => :blank)
    end
  end

  def render_image_creation_description(image_creation)
    if image_creation.description.present?
      "#{image_creation.description}"
    end
  end

  def render_image_creation_images(image_creation)
    s = ""
    if image_creation.images.present?
      width = 100 / image_creation.images.size
      image_creation.images.each do |image|
        s += image_tag(image.image.url, :width => "#{width}%", :class => "image-creation-images")
      end
    end
    return s.html_safe
  end
end

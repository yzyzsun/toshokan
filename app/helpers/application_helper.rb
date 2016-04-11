module ApplicationHelper

  def full_title(page_title)
    base_title = "王立魔法図書館"
    if page_title.empty?
      base_title
    else
      page_title + "|" + base_title
    end
  end

  def gravatar_for(user, options = { size: 100 })
    hash = Digest::MD5::hexdigest(user.email)
    url = "https://secure.gravatar.com/avatar/#{hash}?s=#{options[:size]}&d=mm"
    image_tag url, alt: user.name, class: "gravatar"
  end

end

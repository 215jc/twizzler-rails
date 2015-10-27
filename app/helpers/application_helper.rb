module ApplicationHelper

  def body_class(get_class)
    content_for(:body_class) { get_class }
  end

  def title(get_title)
    content_for(:title) { get_title }
  end

end

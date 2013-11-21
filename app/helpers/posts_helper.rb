module PostsHelper

  def vote_button(post, direction, link_text)
    button_to link_text, post_votes_path(post, direction: direction, format: :json), remote: true
  end
end

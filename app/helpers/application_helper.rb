module ApplicationHelper
  def current_year
    Time.zone.now.year
  end

  def github_ulr(author, repo)
    link_to repo, "https://github.com/#{author}/#{repo}", target: '_blank'
  end

  def flash_message
    flash.map do |type, msg|
      content_tag :p, msg, class: :type
    end.join().html_safe
  end
end

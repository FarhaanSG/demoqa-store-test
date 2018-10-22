class Search
  include Capybara::DSL

  def fill_in_search_box(fill)
    fill_in("s", with: fill)
    find('[name="s"]').native.send_keys(:return)
  end

  def is_search_item_relevant?(searchInput)
    find(".prodtitle").find("a")[:title].downcase.include?(searchInput)
  end

  def is_search_item_irelevant?(searchInput)
    find("#content").find("p").text.downcase.include?("sorry")
  end

  def click_search_box
    find(".search").click
  end

  def is_search_box_empty?
    find(".search[name='s']").text == ""
  end


end

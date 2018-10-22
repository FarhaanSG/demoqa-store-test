class Search
  include Capybara::DSL

  def fill_in_search_box(fill)
    fill_in("s", with: fill)
    find('[name="s"]').native.send_keys(:return)
  end

  def is_search_item_relevant?
    find(".prodtitle")
    # find(".prodtitle").include?("iphone")
  end
end

class Search
  include Capybara::DSL

  def fill_in_search_box(fill)
    fill_in("s", with: fill)
    find("#s")

  end



end

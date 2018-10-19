require "capybara"

class NavBar
include Capybara::DSL



  def visit_home_page
    visit('http://www.store.demoqa.com')
  end

  def hover_over_product_category
    find('#menu-item-33').hover
  end

  def does_drop_down_appear?
    find(".sub-menu").visible?
  end

  def all_letters(str) #Makes sure string contains only letters
    str[/[a-zA-Z ]+/]  == str
  end

  def do_links_contain_only_letters?
    theReturn = true
    find("#menu-main-menu").all("a").each do |each|
      if !all_letters(each.text)
        theReturn = false
      end
    end
    theReturn
  end

  def click_product_category_link
    find("#menu-item-33 > a").click
  end

  def click_accessories_link
    find("#menu-item-34 > a").click
  end

  def click_iMacs_link
    find("#menu-item-35 > a").click
  end

  def click_ipads_link
    find("#menu-item-36 > a").click
  end

  def click_iphones_link
    find("#menu-item-37 > a").click
  end

  def click_ipods_link
    find("#menu-item-38").click
  end

  def click_macbooks_link
    find("#menu-item-39").click
  end

  def click_all_product_link
    find("#menu-item-72 > a").click
  end

end

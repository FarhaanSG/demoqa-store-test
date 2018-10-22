

class DemoQAHomepage
  include Capybara::DSL

  def visit_homepage
    visit("#main-nav > form > fieldset > input.search.blur")
  end

  def slide_css
    return "div#slides"
  end

  def click_slide_option number
    find("#slide_menu").find("a", text: number, visible: false).click
  end

  def get_slide_image
    find("#slides").find("img", visible: true)
  end

  def click_slide_image
    get_slide_image.click
  end

  def click_more_info
    find("#slides").find("a[title=\"More Info\"]", visible: true).click
  end

  def get_slide_image_href
    get_slide_image[:src]
  end

  def click_buy_now
    find("#slides").find("a.buynow").click
  end

  def single_product_regex
    /.*store\.demoqa.com\/products-page\/product-category\/.*/
  end

end

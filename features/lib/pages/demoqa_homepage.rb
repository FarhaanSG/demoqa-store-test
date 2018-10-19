

class DemoQAHomepage
  include Capybara::DSL

  def visit_homepage
    visit("http://store.demoqa.com/")
  end

  def slide_css
    return "div#slides"
  end

  def click_slide_option number
    find("#slide_menu").find("a", text: number, visible: false).click
  end

  def get_slide_image_href
    find("#slides").find("img", visible: true)[:src]
  end

  def click_buy_now
    find("#slides").find("a.buynow").click
  end

  def single_product_regex
    /.*store\.demoqa.com\/products-page\/product-category\/.*/
  end

end

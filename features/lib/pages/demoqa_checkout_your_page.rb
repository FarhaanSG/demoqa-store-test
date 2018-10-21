require 'capybara'

class DemoQACheckoutYourCart
  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  PRODUCT_CATEGORY_LINK_ID = "#menu-item-33"
  IPHONE_PRODUCT_BUTTON_LINK = "#menu-item-37 > a"
  IPHONE_PAGE_FIRST_PRODUCT_DIV = ".default_product_display.product_view_40.iphones.group"
  IPHONE_PAGE_FIRST_PRODUCT_SUBMIT_DIV = ".input-button-buy"
  FIRST_PRODUCT_IN_BASKET_DIV = ".product_row.product_row_0"
  BASKET_LINK = "#header_cart"
  CHECKOUT_YOUR_CART_URL = "http://store.demoqa.com/products-page/checkout/"
  EMPTY_BASKET_MESSAGE_CLASS = ".entry-content"

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def product_category_link
    find(PRODUCT_CATEGORY_LINK_ID)
  end

  def click_product_category_link
    product_category_link.hover
  end

  def click_iphones_link
    find(IPHONE_PRODUCT_BUTTON_LINK).click
  end

  def first_submit_button
    find(IPHONE_PAGE_FIRST_PRODUCT_DIV).find(IPHONE_PAGE_FIRST_PRODUCT_SUBMIT_DIV).click
  end

  def check_product_added_to_cart
    find(FIRST_PRODUCT_IN_BASKET_DIV).visible?
  end

  def find_basket
    find(BASKET_LINK)
  end

  def click_basket_link
    find_basket.click
  end

  def fill_in_quantity(quantity)
    fill_in("quantity", with: quantity)
  end

  def click_update_quantity_button
    find(FIRST_PRODUCT_IN_BASKET_DIV).find("[name=\"submit\"]").click
  end

  def visit_checkout_your_cart
    visit(CHECKOUT_YOUR_CART_URL)
  end

  def check_if_product_deleted
    if find(FIRST_PRODUCT_IN_BASKET_DIV)
      return true
    end
    return false
  end

  def click_remove_product_button
    find(FIRST_PRODUCT_IN_BASKET_DIV).find(".wpsc_product_remove.wpsc_product_remove_0").find("[name=\"submit\"]").click
  end

  def check_empty_basket
    if find(EMPTY_BASKET_MESSAGE_CLASS, text: 'Oops, there is nothing in your cart.')
      return true
    end
    return false
  end

end

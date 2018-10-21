class DemoQAAllProducts
    include Capybara::DSL
    HOMEPAGE_URL = 'http://store.demoqa.com/'
    ALL_PRODUCTS_NAVBAR_ID = '#menu-item-72 > a'
    POP_UP_ID = '.pp_close'
    FIND_PRICE_ID = '.wpsc_product_price'
    DESCRIPTION_ID = '.wpsc_description'
    TITLE_ID = '.prodtitle'
    STAR_RATING_ID = '.star-rating-control'
    BUY_BUTTON_ID = '.input-button-buy'

    #---------------------------------------------------------------
    # Find Elements
    #---------------------------------------------------------------

    def find_nav_bar_all_products_button
        find(ALL_PRODUCTS_NAVBAR_ID)
    end

    def find_product_div(element)
        find(element)
    end

    def find_image_element(image)
        find('img[title="' + image + '"]')
    end

    def find_popup
        find(POP_UP_ID)
    end

    def find_price(element)
        find(element).find(FIND_PRICE_ID)
    end

    def find_description(element)
        find(element).find(DESCRIPTION_ID)
    end

    def find_title(element)
        find(element).find(TITLE_ID)
    end

    def find_star_rating(element)
        find(element).find(STAR_RATING_ID)
    end

    def find_buy_button(element)
        find(element).find(BUY_BUTTON_ID)
    end

    #--------------------------------------------------------------
    # Action
    #--------------------------------------------------------------

    def visit_homepage
        visit(HOMEPAGE_URL)
    end

    def click_nav_bar_button
        visit_homepage
        find_nav_bar_all_products_button.click
    end

    def product_is_visible?(element)
        find_product_div(element).visible?
    end

    def click_on_product_image(image)
        find_image_element(image).click
    end

    def popup_is_visible?
        find_popup.visible?
    end

    def price_is_visible?(element)
        find_price(element).visible?
    end

    def description_is_visible?(element)
        find_description(element).visible?
    end

    def title_is_visible?(element)
        find_title(element).visible?
    end

    def star_rating_is_visible?(element)
        find_star_rating(element).visible?
    end

    def buy_button_is_visible?(element)
        find_buy_button(element).visible?
    end

end
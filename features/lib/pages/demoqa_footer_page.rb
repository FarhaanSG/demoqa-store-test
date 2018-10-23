
class DemoQAFooter
    include Capybara::DSL
#   BLOG_CLASS = ".group"

    HOME_PAGE ="http://store.demoqa.com/"
    FOOTER_NAVBAR = "#footer_nav"
    PINTREST_LOGO = ".pinterest a"
    GOOGLE_PLUS_LOGO = ".gplus a"
    FOOTER_ID = "#footer"
    BLOG_CLASS = ".group"
    IMAGE_PATH = ".footer_featured img"
    FEED_CLASS =".rss a"
    
    SP_HOME = ".menu-item-53"

    def visit_homepage_footer
      visit(HOME_PAGE)
    end

    def find_footer_blogs_click 

        find(FOOTER_ID).find('img[title="iPod Nano Blue"]').click

    end

    
    def find_all_footer_blogs

        find(FOOTER_ID).all(IMAGE_PATH)

    end
 
    def click_footer_pinterest

        find(FOOTER_NAVBAR).find(PINTREST_LOGO).click
    end

    def click_footer_twitter

        find(FOOTER_NAVBAR).find(GOOGLE_PLUS_LOGO).click

    end 
    def click_footer_feed
        find(FOOTER_NAVBAR).find(FEED_CLASS).click
    end


end 
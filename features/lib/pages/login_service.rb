class DemoQALogin
    include Capybara::DSL
    HOMEPAGE_URL = 'http://store.demoqa.com/'
    LOGIN_BUTTON_IN = '#login'
    USERNAME_FIELD_ID = '#log'
    PASSWORD_FIELD_ID = '#pwd'
    ERROR_MESSAGE_CLASS = '.response'
    LOGGED_IN_ID = '#wp-admin-bar-root-default'
    
    def visit_homepage
        visit(HOMEPAGE_URL)
    end

    def visit_account(element_id)
        find(element_id).click
    end

    def click_login_button
        find(LOGIN_BUTTON_IN).click
    end

    def input_username(username)
        find(USERNAME_FIELD_ID).fill_in(with: username)
    end

    def input_password(password)
        find(PASSWORD_FIELD_ID).fill_in(with: password)
    end

    def error_message_is_present?
        find(ERROR_MESSAGE_CLASS).visible?
    end

    def logged_in?
        find(LOGGED_IN_ID).visible?
    end




end
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

    #---------------------------------------------------------------
    # Find Elements
    #---------------------------------------------------------------

    def find_account_button(element)
        find(element)
    end

    def find_login_button
        find(LOGIN_BUTTON_IN)
    end

    def find_username_field
        find(USERNAME_FIELD_ID)
    end

    def find_password_field
        find(PASSWORD_FIELD_ID)
    end

    def find_error_message
        find(ERROR_MESSAGE_CLASS)
    end

    def find_logged_in_div
        find(LOGGED_IN_ID)
    end

    #--------------------------------------------------------------
    # Action
    #--------------------------------------------------------------

    def visit_account(element_id)
        find_account_button(element_id).click
    end
    
    def click_login_button
        find_login_button.click
    end

    def input_username(username)
        find_username_field.fill_in(with: username)
    end

    def input_password(password)
        find_password_field.fill_in(with: password)
    end

    def error_message_is_present?
        find_error_message.visible?
    end

    def logged_in?
        find_logged_in_div.visible?
    end
end
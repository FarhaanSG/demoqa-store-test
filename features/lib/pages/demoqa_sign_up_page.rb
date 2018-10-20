class DemoQASignUp
    include Capybara::DSL
    HOMEPAGE_URL = 'http://store.demoqa.com/'
    REGISTER_LINK_HREF = 'a[href="http://store.demoqa.com/wp-login.php?action=register"]'
    USERNAME_FIELD_ID = '#user_login'
    EMAIL_FIELD_ID = '#user_email'
    ERROR_MESSAGE_CLASS = '#login_error'
    LOGGED_IN_ID = '#wp-admin-bar-root-default'
    LOGIN_BUTTON_ID = '#wp-submit'
    
    #---------------------------------------------------------
    # Find elements
    #---------------------------------------------------------

    def find_register_button
        find(REGISTER_LINK_HREF)
    end

    def find_account_button(element)
        find(element)
    end

    def find_login_button
        find(LOGIN_BUTTON_ID)
    end

    def find_username_field
        find(USERNAME_FIELD_ID)
    end

    def find_email_field
        find(EMAIL_FIELD_ID)
    end

    def find_error_message
        find(ERROR_MESSAGE_CLASS)
    end

    #---------------------------------------------------------
    # Action
    #---------------------------------------------------------

    def click_register_button
        find_register_button.click
    end

    def visit_account(element_id)
        find_account_button(element_id).click
    end

    def click_login_button
        find_login_button.click
    end

    def input_username(username)
        find_username_field.fill_in(with: username)
    end

    def input_email(email)
        find_email_field.fill_in(with: email)
    end

    def error_message_is_present?
        find_error_message.visible?
    end
end
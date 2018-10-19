class DemoQASignUp
    include Capybara::DSL
    HOMEPAGE_URL = 'http://store.demoqa.com/'
    USERNAME_FIELD_ID = '#user_login'
    EMAIL_FIELD_ID = '#user_email'
    ERROR_MESSAGE_CLASS = '#login_error'
    LOGGED_IN_ID = '#wp-admin-bar-root-default'
    LOGIN_BUTTON_ID = '#wp-submit'
    
    def visit_register
        find('a[href="http://store.demoqa.com/wp-login.php?action=register"]').click
    end

    def visit_account(element_id)
        find(element_id).click
    end

    def click_login_button
        find(LOGIN_BUTTON_ID).click
    end

    def input_username(username)
        find(USERNAME_FIELD_ID).fill_in(with: username)
    end

    def input_email(email)
        find(EMAIL_FIELD_ID).fill_in(with: email)
    end

    def error_message_is_present?
        find(ERROR_MESSAGE_CLASS).visible?
    end




end
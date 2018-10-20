require_relative 'pages/demoqa_login_page.rb'
require_relative "pages/demoqa_home_page"
require_relative "pages/demoqa_nav_bar.rb"
require_relative 'pages/demoqa_sign_up_page.rb'

module DemoQAStore

    def login_service
        DemoQALogin.new
    end

    def sign_up_service
        DemoQASignUp.new
    end

    def demoqa_homepage
        DemoQAHomepage.new
    end

    def nav_bar
        NavBar.new
    end

end

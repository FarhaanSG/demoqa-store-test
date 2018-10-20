require_relative 'pages/login_service.rb'
require_relative "pages/demoqa_homepage"
require_relative "pages/nav_bar.rb"
require_relative "pages/search.rb"

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

    def search
      Search.new
    end

end

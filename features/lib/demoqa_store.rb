require_relative 'pages/login_service.rb'
require_relative "pages/demoqa_homepage"
require_relative "pages/nav_bar.rb"

module DemoQAStore

    def login_service
        DemoQALogin.new
    end

    def demoqa_homepage
      DemoQAHomepage.new
    end

    def nav_bar
      NavBar.new
    end

end

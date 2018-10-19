require_relative 'pages/login_service.rb'
require_relative "pages/demoqa_homepage"

module DemoQAStore

    def login_service
        DemoQALogin.new
    end

    def demoqa_homepage
        DemoQAHomepage.new
    end

end

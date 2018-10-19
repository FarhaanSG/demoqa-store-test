require_relative 'pages/login_service.rb'
require_relative 'pages/sign_up_service.rb'

module DemoQAStore

    def login_service
        DemoQALogin.new
    end

    def sign_up_service
        DemoQASignUp.new
    end


end

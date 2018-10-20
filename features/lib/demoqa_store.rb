require_relative "pages/demoqa_checkout_your_page.rb"
require_relative 'pages/login_service.rb'
require_relative "pages/demoqa_homepage"
require_relative 'pages/demoqa_login_page.rb'
require_relative "pages/demoqa_home_page"
require_relative "pages/demoqa_nav_bar_page.rb"
require_relative 'pages/demoqa_sign_up_page.rb'

module DemoQAStore

  def demoqa_your_cart
    DemoQACheckoutYourCart.new
  end

  def login_service
    DemoQALogin.new
  end

  def demoqa_homepage
    DemoQAHomepage.new
  end

  def sign_up_service
    DemoQASignUp.new
  end

  def nav_bar
    DemoQANavBar.new
  end

end

require_relative "pages/demoqa_checkout_your_page.rb"
require_relative 'pages/login_service.rb'
require_relative "pages/demoqa_homepage"

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

end

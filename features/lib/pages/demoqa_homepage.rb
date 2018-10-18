

class DemoQAHomepage
  include Capybara::DSL

  def visit_homepage
    visit("http://store.demoqa.com/")
  end

  def slide_css
    return "div#slides"
  end



end

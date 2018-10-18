require "capybara"

class HomePage
include Capybara::DSL

def visit_home_page
    visit('http://www.store.demoqa.com')
  end


end

class DemoQALogin
    include Capybara::DSL
    HOMEPAGE_URL = 'http://www.tinder.com/'
    USERNAME = ''
    PASSWORD = ''

    def visit_homepage
        visit(HOMEPAGE_URL)
    end

    def click_log_in_with_facebook
      login_window = window_opened_by do
        click_button 'Login with Facebook'
      end
      within_window(login_window) do
        fill_in('email', :with => USERNAME)
        fill_in('pass', :with => PASSWORD)
        click_button('Log In')
      end
      
      click_button('Next')
      click_button('Next')
      click_button('Allow')
      click_button('Enable')
      sleep 2
      find(".button__text").click
      sleep 2

      i = 0
      amount_of_swipes = rand(600..1000)
      amount_of_swipes.times do
        go_away_pop_up
        sleepFor = rand(1.1..3.3)
        sleep sleepFor
        i += 1
        puts i
        randomBoolean = [true, false].sample
          if randomBoolean == true
            all("button")[4].click
          else
            all("button")[2].click
          end
      end
    end

    def go_away_pop_up
      puts find("body").text.downcase.include?("Not interested".downcase)
      if find("body").text.downcase.include?("Not interested".downcase)
        all("button").last.click
      end
    end

    def is_visible?(element)
      begin
        element.displayed?
        return true
      rescue => e
        p e.message
        return false
      end
    end


end

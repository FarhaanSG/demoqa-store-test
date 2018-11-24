Given("I access the home page") do
    login_service.visit_homepage
    login_service.click_log_in_with_facebook
end

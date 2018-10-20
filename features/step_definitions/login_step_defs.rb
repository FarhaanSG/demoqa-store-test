Given("I access the home page") do
    login_service.visit_homepage
end

Given(/^I access the account page via the (.*) link with the id of (.*)$/) do |link, id|
    login_service.visit_account(id)
end

Given("I input a valid username") do
    login_service.input_username('Farhaan1234')
end

Given("I input a valid password") do
    login_service.input_password('Farhaan1234')
end

When("I click on the login button") do
    login_service.click_login_button
end

Then("I am redirected and logged in") do
    expect(login_service.logged_in?).to eq(true)
end

Given("I input a invalid username") do
    login_service.input_username('Farhaan12345')
end

Given("I input a invalid password") do
    login_service.input_password('Fahaan1234')
end

Then("I get an error message") do
   expect(login_service.error_message_is_present?).to eq(true)
end

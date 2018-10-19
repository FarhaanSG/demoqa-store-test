Given("I access the register page") do
  sign_up_service.visit_register
end

Given("I input a valid new username") do
  sign_up_service.input_username('farhaan1234')
  sleep(2)
end

Given("I input a invalid new username") do
  sign_up_service.input_username('bobby')
end


Given("I input a valid new email") do
  sign_up_service.input_email('cbingle-williams@spartaglobal.com')
end
  
When("I click on the register button") do
  sign_up_service.click_login_button
end
  
Then("I am told that the account is already created") do
  expect(sign_up_service.error_message_is_present?).to eq(true)
end
  
Given("I input a invalid new email") do
  sign_up_service.input_email('cbingle-williamsspartaglobal.com')
end

Then("I get an error message with information explaining error") do
  expect(sign_up_service.error_message_is_present?).to eq(true)
end

#SELECT SHIPPING COUNTRY AND CHECK IF SHIPPING PRICE CHANGES
Given("I have a product added to my basket") do
  demoqa_your_cart.visit_home_page
  demoqa_your_cart.click_product_category_link
  demoqa_your_cart.click_iphones_link
  demoqa_your_cart.first_submit_button
  sleep 2
  demoqa_your_cart.click_basket_link
end

And("I clicked continue to get to the checkout info page") do
  demoqa_basket_info.click_continue_button
end

When("I select a country from the dropdown list") do
  demoqa_basket_info.select_country_dropdown
  sleep 4
end

And("I input a state or province") do
  demoqa_basket_info.input_state_province("Batcave")
  sleep 2
end

And("I click on the Calculate Button") do
  demoqa_basket_info.click_calculate_button
  sleep 3
end

Then("I should see the total shipping price change") do
  expect(demoqa_basket_info.shipping_price_change).to eq(true)
end

#ENTER IN VALID DETAILS IN ORDER TO PURCHASE A PRODUCT
When("I enter a valid username") do
  demoqa_basket_info.input_username('Farhaan1234')
end

And("I enter a valid password") do
  demoqa_basket_info.input_password('Farhaan1234')
end

And("I click the sign in button") do
  demoqa_basket_info.click_login_button
  sleep 7
end

Then("I should be able to enter in a email") do
  demoqa_basket_info.input_email("cbingle-williams@spartaglobal.com")
  sleep 2
end

And("I should be able to enter in the Billing, Contact and Shipping Address details") do
  demoqa_basket_info.input_first_name("Bruce")
  demoqa_basket_info.input_last_name("Wayne")
  demoqa_basket_info.input_address("1 Wayne Manor")
  demoqa_basket_info.input_city("Gotham City")
  demoqa_basket_info.input_province("Rich")
  demoqa_basket_info.second_counrty_dropdown
  demoqa_basket_info.input_postcode("PST CDE")
  demoqa_basket_info.input_phone_number("0201 234 5678")
  demoqa_basket_info.click_same_as_billing
  sleep 3
end

And("I should be able to click purchase") do
  demoqa_basket_info.click_purchase_button
end

And("I should be able to view a summary of my purchase") do
  expect(demoqa_basket_info.find_summary_of_products).to eq(true)
end

#INPUTTING AN INVALID USERNAME WITH A PASSWORD
When("I enter an invalid username with the correct password") do
  demoqa_basket_info.input_username('WrongUser')
  demoqa_basket_info.input_password('Farhaan1234')
  demoqa_basket_info.click_login_button
end

Then("I should get an incorrect username error message") do
  expect(demoqa_basket_info.invalid_username_error).to eq(true)
  sleep 2
end

#INPUTTING AN INVALID PASSWORD WITH A CORRECT USERNAME
When("I enter an invalid password with the correct username") do
  demoqa_basket_info.input_username('Farhaan1234')
  demoqa_basket_info.input_password('WrongPass')
  demoqa_basket_info.click_login_button
end

Then("I should get an incorrect password error message") do
  expect(demoqa_basket_info.invalid_password_error).to eq(true)
  sleep 2
end

#INPUTTING AN INCORRECT EMAIL FORMAT
When("I enter an invalid email") do
  demoqa_basket_info.input_email("email.com")
  demoqa_basket_info.click_purchase_button
  demoqa_basket_info.click_continue_button
end

Then("Then i should get an invalid email error message") do
  expect(demoqa_basket_info.check_invalid_email_error).to eq(true)
end

#ADDING A PRODUCT TO THE BASKET
Given("I am able to access the website") do
  demoqa_your_cart.visit_home_page
end

When("I click add to cart on a product") do
  demoqa_your_cart.click_product_category_link
  demoqa_your_cart.click_iphones_link
  # demoqa_your_cart.click_product_add_to_cart_link
  # demoqa_your_cart.click_product_category_link

  demoqa_your_cart.first_submit_button
  sleep 2
end

Then("The product should be added to the basket page") do
  demoqa_your_cart.click_basket_link
  expect(demoqa_your_cart.check_product_added_to_cart).to eq(true)
end

#CHANGING THE QUANTITY OF A PRODUCT IN THE BASKET
Given("I am on the checkout your cart page") do
  demoqa_your_cart.visit_home_page
end

And("I have a product added to the basket") do
  demoqa_your_cart.click_product_category_link
  demoqa_your_cart.click_iphones_link
  demoqa_your_cart.first_submit_button
  demoqa_your_cart.click_basket_link
end

When("I change the quantity of the product") do
  demoqa_your_cart.fill_in_quantity("2")
  sleep 3
end

And("I click on the update button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to see the updated product and sub-total amount") do
  pending # Write code here that turns the phrase above into concrete actions
end

##CHANGING THE QUANTITY OF A PRODUCT TO A LETTER IN THE BASKET
When("I change the quantity of the product to a letter") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The product should get removed from the checkout page") do
  pending # Write code here that turns the phrase above into concrete actions
end

#REMOVING A PRODUCT FROM THE BASKET
When("I click on the remove button for a product") do
  pending # Write code here that turns the phrase above into concrete actions
end

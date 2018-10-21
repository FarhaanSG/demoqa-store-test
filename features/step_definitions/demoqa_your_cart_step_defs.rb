#ADDING A PRODUCT TO THE BASKET
Given("I am able to access the website") do
  demoqa_your_cart.visit_home_page
end

When("I click add to cart on a product") do
  demoqa_your_cart.click_product_category_link
  demoqa_your_cart.click_iphones_link
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
  sleep 2
  demoqa_your_cart.click_basket_link
end

When("I change the quantity of the product") do
  demoqa_your_cart.fill_in_quantity("2")
end

And("I click on the update button") do
  demoqa_your_cart.click_update_quantity_button
end

Then("I should be able to see the updated product and sub-total amount") do
  demoqa_your_cart.visit_checkout_your_cart
  sleep 2
end

##CHANGING THE QUANTITY OF A PRODUCT TO A LETTER IN THE BASKET
When("I change the quantity of the product to a letter") do
  demoqa_your_cart.fill_in_quantity("p")
end

Then("The product should get removed from the checkout page") do
  expect(demoqa_your_cart.visit_checkout_your_cart).to have_no_css(".product_row.product_row_0")
  sleep 2
end

#REMOVING A PRODUCT FROM THE BASKET
When("I click on the remove button for a product") do
  demoqa_your_cart.click_remove_product_button
  sleep 2
end

#CLICKING ON AN EMPTY BASKET
When("I click on the basket page") do
  demoqa_your_cart.click_basket_link
end

Then("I should be able see an error message") do
  expect(demoqa_your_cart.check_empty_basket).to eq(true)
end

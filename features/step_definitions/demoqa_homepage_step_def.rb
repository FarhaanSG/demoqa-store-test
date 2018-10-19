Given("I am on the homepage") do
  demoqa_homepage.visit_homepage
end

Then("I should see the homepage slides") do
  expect(demoqa_homepage).to have_css demoqa_homepage.slide_css
end

When(/I click on the slide menu option (\d)/) do |number|
  demoqa_homepage.click_slide_option number
  sleep 1
end

Then(/I should see a slide with a (.*) image/) do |img_string|
  expect(demoqa_homepage.get_slide_image_href).to include img_string
end

When("I click on the Buy Now button") do
  demoqa_homepage.click_buy_now
end

Then("I should be on a specific product page") do
  expect(current_url).to match demoqa_homepage.single_product_regex
end

When("I click on the magicmouse image") do
  demoqa_homepage.click_slide_image
end

When("I click on more info") do
  demoqa_homepage.click_more_info
end

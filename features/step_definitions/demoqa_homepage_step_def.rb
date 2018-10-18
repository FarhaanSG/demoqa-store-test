Given("I am on the homepage") do
  demoqa_homepage.visit_homepage
end

Then("I should see the homepage slides") do
  expect(demoqa_homepage).to have_css demoqa_homepage.slide_css
end

When("I click on the first slide menu option") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see a slide with a magic mouse image") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the Buy Now button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on a specific product page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I type valid product details in the search bar") do
 search.fill_in_search_box("iphone")
end

Then("I should get the valid results") do
  expect(search.is_search_item_relevant?("iphone")).to be true
end

When("I type invalid product details in the search bar") do
  search.fill_in_search_box("sdlkjfdslkj")
end

Then("I should receive an error for not finding the product") do
  puts expect(search.is_search_item_irelevant?("sdlkjfdslkj")).to be true
end

When("I click on the search box") do
  search.click_search_box
end

Then("the search box should be empty") do
  puts expect(search.is_search_box_empty?).to be true
end

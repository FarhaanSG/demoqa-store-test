When("I type valid product details in the search bar") do
puts "testing start"
 search.fill_in_search_box("hello")
 
end


Then("I should get the valid results") do
  #   puts "testing start"
  #   puts find("#content").find(".product_image")
end

When("I type invalid product details in the search bar") do

end


Then("I should receive an error for not finding the product") do

end

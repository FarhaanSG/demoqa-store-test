Given("I am on the home page") do
  nav_bar.visit_home_page
end

When("I hover over the Product Category link") do
  nav_bar.hover_over_product_category
end

Then("a drop down box containing more options should appear") do
  expect(nav_bar.does_drop_down_appear?).to be true
end

Then("the links should only contain letters") do
  expect(nav_bar.do_links_contain_only_letters?).to be true
end

Then("the Product Category link should lead to the Product Category page") do
  nav_bar.click_product_category_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/")
end

And("the Accessories link should lead to the Accessories page") do
  nav_bar.hover_over_product_category
  nav_bar.click_accessories_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/accessories/")
end

And("the iMacs link should lead to the iMacs page") do
  nav_bar.hover_over_product_category
  nav_bar.click_iMacs_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/imacs/")
end

Then("the iPads link should lead to the iPads page") do
  nav_bar.hover_over_product_category
  nav_bar.click_ipads_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/ipads/")
end


And("the iPhones link should lead to the iPhones page") do
  nav_bar.hover_over_product_category
  nav_bar.click_iphones_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/iphones/")
end

And("the iPods link should lead to the iPods page") do
  nav_bar.hover_over_product_category
  nav_bar.click_ipods_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/ipods/")
end

And("the MacBooks link should lead to the MacBooks page") do
  nav_bar.hover_over_product_category
  nav_bar.click_macbooks_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/macbooks/")
end

And("the All Product link should lead to the All Product page") do
  nav_bar.hover_over_product_category
  nav_bar.click_all_product_link
  expect(nav_bar.current_url).to eq("http://store.demoqa.com/products-page/product-category/")
end

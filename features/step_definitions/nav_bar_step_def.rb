Given("I am on the home page") do
  home_page.visit_home_page
end

When("I hover over the Product Category link") do
  home_page.hover_over_product_category
end

Then("a drop down box containing more options should appear") do
  expect(home_page.does_drop_down_appear?).to be true
end

Then("the links should only contain letters") do
  expect(home_page.do_links_contain_only_letters?).to be true
end

Then("the Product Category link should lead to the Product Category page") do
  home_page.click_product_category_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/")
end

And("the Accessories link should lead to the Accessories page") do
  home_page.hover_over_product_category
  home_page.click_accessories_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/accessories/")
end

And("the iMacs link should lead to the iMacs page") do
  home_page.hover_over_product_category
  home_page.click_iMacs_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/imacs/")
end

Then("the iPads link should lead to the iPads page") do
  home_page.hover_over_product_category
  home_page.click_ipads_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/ipads/")
end


And("the iPhones link should lead to the iPhones page") do
  home_page.hover_over_product_category
  home_page.click_iphones_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/iphones/")
end

And("the iPods link should lead to the iPods page") do
  home_page.hover_over_product_category
  home_page.click_ipods_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/ipods/")
end

And("the MacBooks link should lead to the MacBooks page") do
  home_page.hover_over_product_category
  home_page.click_macbooks_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/macbooks/")
end

And("the All Product link should lead to the All Product page") do
  home_page.hover_over_product_category
  home_page.click_all_product_link
  expect(home_page.current_url).to eq("http://store.demoqa.com/products-page/product-category/")
end

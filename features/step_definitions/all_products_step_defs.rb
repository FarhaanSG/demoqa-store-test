Given("I can access the All Product page") do
    all_products_page.click_nav_bar_button
end

And(/^I can view the (.*) product with the (.*) id$/) do |product,id|
    expect(all_products_page.product_is_visible?(id)).to eq(true)
end

And(/^(.*) with (.*) id has a price$/) do |product,id|
    expect(all_products_page.price_is_visible?(id)).to eq(true)
end

And(/^(.*) with (.*) id has a description$/) do |product,id|
    expect(all_products_page.description_is_visible?(id)).to eq(true)
end

And(/^(.*) with (.*) id has a title$/) do |product,id|
    expect(all_products_page.title_is_visible?(id)).to eq(true)
end

And(/^(.*) with (.*) id has a star rating$/) do |product,id|
    expect(all_products_page.star_rating_is_visible?(id)).to eq(true)
end

And(/^(.*) with (.*) id has a buy button/) do |product,id|
    expect(all_products_page.buy_button_is_visible?(id)).to eq(true)
end

When(/^I click on the (.*) image$/) do |product|
    all_products_page.click_on_product_image(product)
    sleep(1)
end

Then(/^(.*) popup appears$/) do |product|
    expect(all_products_page.popup_is_visible?).to eq(true)
end


Given("I am on the demoqa's homepage") do
  demoqa_footer_blogs.visit_homepage_footer
  end
  
  When("I click on the three blogs icon") do
    # demoqa_footer_blogs.find_footer_blogs_click
    demoqa_footer_blogs.find_all_footer_blogs[0].click
  end
  
  Then("I should be directed to the respective blog pages") do
    expect(current_url).to include "http://store.demoqa.com/"

  end
  
  When("I click on social media icons") do
    demoqa_footer_blogs.click_footer_twitter
    demoqa_footer_blogs.click_footer_pinterest
    demoqa_footer_blogs.click_footer_feed

  end
  
  Then("I should be directed to the respective social media websites") do
    expect(current_url).to include "http://store.demoqa.com/feed/"
  end
  
  When("I click on three links of the demoqa's pages") do
   
  end
  
  Then("I should be directed to the different demoqa's pages") do
   
  end
  
Given /^I am on new product page$/ do
  visit new_section_product_path(Section.last)
end

When /^I fill product details correctly$/ do
  fill_in "Name", :with => "Computers"
  fill_in "Description", :with => "Computers section"
  click_button "product_commit"
end

Then /^I should be on product page$/ do
  current_path.should eq(section_product_path(Section.last, Product.last))
end

When /^I should see product errors$/ do
  find(:simple_form_error, "product_name").text.should eq("can't be blank")
end

Given /^product exists$/ do
  Factory(:product)
end

Given /^I am on products page$/ do
 visit section_products_path(Section.last)
end

When /^I remove product$/ do
  click_link "Destroy"
  page.driver.browser.switch_to.alert.accept
end

Then /^I should not have the product$/ do
  Product.count.should eq(0)
end

Given /^I am on edit product page$/ do
  visit edit_section_product_path(Section.last, Product.last)
end

When /^I erase product details$/ do
  fill_in "Name", :with => " "
  fill_in "Description", :with => " "
  click_button "product_commit"
end

Then /^I should be on products page$/ do
  current_path.should eq(section_products_path(Section.last))
end

Given /^filters with values exists$/ do
  Factory(:value)
  Factory(:value)
  Factory(:value, filter: Filter.first)
end

When /^I set filter values for the product$/ do
  check Value.first.name
  check Value.last.name
end

Then /^I should see filter values$/ do
  should have_content(Value.first.name)
  should have_content(Value.last.name)
end

When /^I update product$/ do
  click_button "product_commit"
end
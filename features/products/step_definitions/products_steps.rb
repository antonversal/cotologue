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
 pending
end

When /^I remove product$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should not have the product$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am on edit product page$/ do
  visit edit_section_product_path(Section.last, Product.last)
end

When /^I erase product details$/ do
  fill_in "Name", :with => " "
  fill_in "Description", :with => " "
  click_button "product_commit"
end
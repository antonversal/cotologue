Given /^I am on new value page$/ do
  visit new_filter_value_path(Filter.last)
end

When /^I fill value details correctly$/ do
  fill_in "Name", with: "CPU"
  click_button "value_commit"
end

Then /^I should be on values page$/ do
  current_path.should eq(filter_values_path(Filter.last))
end

When /^I should see value errors$/ do
  find(:simple_form_error, "value_name").text.should eq("can't be blank")
end

Given /^value exists$/ do
  Factory(:value)
end

Given /^I am on values page$/ do
  visit filter_values_path(Filter.last)
end

When /^I remove value$/ do
  click_link "Destroy"
  page.driver.browser.switch_to.alert.accept
end

Then /^I should not have the value$/ do
  Value.count.should eq(0)
end

Given /^I am on edit value page$/ do
  visit edit_filter_value_path(Filter.last, Value.last)
end

When /^I erase value details$/ do
  fill_in "Name", with: ""
  click_button "value_commit"
end
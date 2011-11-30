Given /^I am on new filter page$/ do
  visit new_filter_path
end

When /^I fill filter details correctly$/ do
  fill_in "Name", with: "CPU Type"
  click_button "filter_commit"
end

Then /^I should be on filters page$/ do
  current_path.should eq(filters_path)
end

When /^I should see filter errors$/ do
  find(:simple_form_error, "filter_name").text.should eq("can't be blank")
end

Given /^filter exists$/ do
  Factory(:filter)
end

Given /^I am on edit filter page$/ do
  visit edit_filter_path(Filter.last)
end

When /^I erase filter details$/ do
  fill_in "Name", with: ""
  click_button "filter_commit"
end

Given /^I am on filters page$/ do
  visit filters_path
end

When /^I remove filter$/ do
  click_link "Destroy"
  page.driver.browser.switch_to.alert.accept
end

Then /^I should not have the filter$/ do
  Filter.count.should eq(0)
end
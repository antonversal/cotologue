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
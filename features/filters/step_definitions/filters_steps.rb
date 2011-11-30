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
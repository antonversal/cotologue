Given /^I am on new section page$/ do
  visit new_section_path
end

When /^I fill section details correctly$/ do
  fill_in :name, :with => "Computers"
  fill_in :description, :with => "Computers section"
  click_button "section_commit"
end

Then /^I should be on the index section page$/ do
  current_path.should eq(sections_path)
end

When /^I do not fill details$/ do
  click_button "Create"
end

Then /^I should see section errors$/ do
  find(:simple_form_error, "section_name").text.should eq("can't be blank")
end

Given /^section exists$/ do
  Factory(:section)
end

Given /^I am on edit section page$/ do
  visit edit_section_path(Section.last)
end

When /^I erase details$/ do
  fill_in :name, :with => ""
  fill_in :description, :with => ""
  click_button "section_commit"
end
Given(/^there are no coderetreats runnng today$/) do
end

When(/^I go to the running coderetreats display page$/) do
  visit running_today_coderetreats_url
end

Then(/^I should see that there are no coderetreats running$/) do
  page.should have_content("There are no CodeRetreats running today")
end

Given(/^there are some coderetreats runnng today$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the running coderetreats grouped by status$/) do
  pending # express the regexp above with the code you wish you had
end
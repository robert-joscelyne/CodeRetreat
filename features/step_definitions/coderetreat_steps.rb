Given(/^there are no coderetreats runnng today$/) do
end

When(/^I go to the running coderetreats display page$/) do
  visit running_today_coderetreats_url
end

Then(/^I should see that there are no coderetreats running$/) do
  page.should have_content("There are no CodeRetreats running today")
end

Coderetreat = Struct.new :status, :location

Given(/^there are some coderetreats runnng today$/) do
	@coderetreats = [
		Coderetreat.new("not_started", "London"),
		Coderetreat.new("not_started", "Manchester"),
		Coderetreat.new("in_session", "Berlin")
	]
end

Then(/^I should see the running coderetreats grouped by status$/) do
  @coderetreats.each do |coderetreat|
  	within(".#{coderetreat.status}") do
  		page.should have_css(".coderetreat", text: coderetreat.location)
  	end
  end
end
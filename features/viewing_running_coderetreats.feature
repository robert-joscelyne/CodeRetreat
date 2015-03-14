Feature: Viewing the coderetreats running today

	Scenario: No coderetreats running today
		Given there are no coderetreats runnng today 
		When I go to the running coderetreats display page
		Then I should see that there are no coderetreats running
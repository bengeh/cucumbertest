Feature: Users must be able to search for content using Google

Scenario: Search for a term
Given that I am on http://www.google.com.sg
When I fill in "q" found by "name" with "cats"
And click the "Google Search" button
Then "cats" should be mentioned in the results


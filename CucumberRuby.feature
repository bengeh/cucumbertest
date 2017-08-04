Feature: Users must be able to search for content using Google

Scenario: Search for a term
Given that I have gone to the Google page
When I add "cats" to the search box
And click the Search Button
Then "cats" should be mentioned in the results
And click the first link

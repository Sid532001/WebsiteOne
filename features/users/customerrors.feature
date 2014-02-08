Feature:
  As a visitor
  In order to understand what happened when something goes wrong
  I would like to have a comprehensible error message
  https://www.pivotaltracker.com/s/projects/982890/stories/64956494

#  Background:
#    Given the following pages exist:
#      | name     | permalink | content                                                  |
#      | 404      | 404       | We're sorry, but we couldn't find the page you requested!|
#      | 500      | 500       | Internal server error                                    |
#      | About Us | about     | We are the coolest guys around!                          |

@allow-rescue
  Scenario: Show custom 404 page
    Given I visit "/666"
    And the response status should be "404"
    Then I should be on the static "404" page
    Then the page should be titled "404 File Not Found"
    And I should see "We're sorry, but we couldn't find the page you requested!"





#@allow-rescue

#Scenario: Show custom 500 page
#  When I am on the "ewew||" page
#  Then the page should be titled "500 Internal Error"
#  And the response status should be "500"
#  Then show me the page
#  And I should see "We're sorry, but we couldn't process your request"




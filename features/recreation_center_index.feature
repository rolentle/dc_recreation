Feature: Recreation Center Index Page

  I see a list of recreation centers

  Background:
    Given there is a recreation center with:
      | objectid | name                             | address                         | status |
      | 1        | King Greenleaf Recreation Center | 201 N STREET SW                 | Open   |
      | 2        | Benning Park Community Center    | SOUTHERN AVE. AND FABLE ST., SE | Open   |

  Scenario: Visit Index Page
    When I go the the recreation center index page
    Then I see "King Greenleaf Recreation Center"
    And I see "201 N STREET SW"
    And I see "Benning Park Community Center"
    And I see "SOUTHERN AVE. AND FABLE ST., SE"

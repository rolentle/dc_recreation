Feature: Recreation Center Show Page

  I see Recreation Center Show Page
  Background:
    Given there is a recreation center with:
      | objectid  | name                              | address                          | status  |
      | 1         | King Greenleaf Recreation Center  | 201 N STREET SW                  | Open    |
      | 2         | Benning Park Community Center     | SOUTHERN AVE. AND FABLE ST., SE  | Open    |

  Scenario: Visit Show Page
    When I go the the recreation center page with objectid of 1
    Then I see "King Greenleaf Recreation Center"
    And I see "201 N STREET SW"
    And I see "Open"

  Scenario: Link Show Page Back to Index Page
    When I go the the recreation center page with objectid of 1
    And I click on "DC Recreation Centers"
    Then I see "King Greenleaf Recreation Center"
    And I see "201 N STREET SW"
    And I see "Benning Park Community Center"
    And I see "SOUTHERN AVE. AND FABLE ST., SE"

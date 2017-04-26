Feature: Recreation Center Show Page

  I see Recreation Center Show Page
  Background:
    Given there is a recreation center with:
      | objectid | name                             | address                         | status | pool   | pool_name      | phone          | fitness_center |
      | 1        | King Greenleaf Recreation Center | 201 N STREET SW                 | Open   | indoor | Fake Pool Name | (202) 645-7454 | Cardio Center  |
      | 2        | Benning Park Community Center    | SOUTHERN AVE. AND FABLE ST., SE | Open   | none   | none           |                | No             |

  Scenario: Visit Show Page
    When I go the the recreation center page with objectid of 1
    Then I see "King Greenleaf Recreation Center"
    And I see "201 N STREET SW"
    And I see "Open"
    And I see "Fake Pool Name"
    And I see "indoor"
    And I see "(202) 645-7454"
    And I see "Cardio Center"

  Scenario: Visit Show Page with no Pool or Phone
    When I go the the recreation center page with objectid of 2
    Then I see "Benning Park Community Center"
    And I do not see "none"
    And I do not see "No"

  Scenario: Link Show Page Back to Index Page
    When I go the the recreation center page with objectid of 1
    And I click on "DC Recreation Centers"
    Then I see "King Greenleaf Recreation Center"
    And I see "201 N STREET SW"
    And I see "Benning Park Community Center"
    And I see "SOUTHERN AVE. AND FABLE ST., SE"

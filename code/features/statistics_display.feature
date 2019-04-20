Feature: statistics display for instructor
  
  In order to understand the performance of students
  As an Instructor
  I want to see the statistics
  
  Scenario: 'View Problems by Topics'
    When I log in with hanna's information
    Then I click View Statistics
    Then I should see "All Statistics"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Statistics"
Feature: statistics display for instructor
  
  In order to understand the performance of students
  As an Instructor
  I want to see the statistics
  Background: 
    Given the following topics exist:
      | name |
      | Data Structures and Algorithms |
      | Programming |
      | Basic Mathematics |
  
    Given the following instructors exist:
      | name        | email           | password     |password_confirmation | admin | activated |
      | admin       | admin@admin.com |123456        |123456                |  true | true      |
      | Hang Li     |hangli@tamu.edu  |123456        |123456                | true  | true      |
      | Hanna       |hanna@tamu.edu   |123456        |123456                | true  | true      |
  
  Scenario: 'View Statistics by Topics'
    When I log in with hanna's information
    Then I click View Statistics
    Then I should see "Select Topic to display Statistics"
    And I should see "Data Structures and Algorithms"
    Then I follow "Data Structures and Algorithms"
    Then I should see "Statistics for Data Structures and Algorithms"
    
  Scenario: 'View All Statistics'
    When I log in with hanna's information
    Then I click View Statistics
    And I should see "Display All Statistics"
    Then I follow "Display All Statistics"
    Then I should see "Statistics for All Topics"
    
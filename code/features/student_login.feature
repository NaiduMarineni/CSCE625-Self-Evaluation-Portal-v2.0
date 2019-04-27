Feature: student login to take quiz
  
  In order to use the website
  As a student
  I want to be able to login and take quiz
 
  Scenario: 'Student login and evaluation'
    When I am on the homepage 
    Then I should see "Start Evaluation!"
    And I start evaluation
    Then I should see "Student Login"
    And I fill in "Email" with "duopoka2@gmail.com"
    And I fill in "Password" with "1234"
    And I check "Remember me on this computer"
    Then I press "Log in"
    Then I should be on the 
    Then I should see "Thank you for loging in. You can start your evaluation now"
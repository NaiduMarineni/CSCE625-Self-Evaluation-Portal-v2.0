Feature: student login to take quiz
  
  In order to use the website
  As a student
  I want to be able to login and take quiz
  
  Background: students in database
    Given the following students exist:
    | username        | email             | password     |password_confirmation | 
    | Projna          | duopoka2@gmail.com|1234          |1234                  |  
  

      
  Scenario: 'Student login and evaluation'
    When I am on the homepage 
    Then I should see "Start Evaluation!"
    And I start evaluation
    Then I should see "Student Login"
    And I fill in "Email" with "duopoka2@gmail.com"
    And I fill in "Password" with "1234"
    And I check "Remember me on this computer"
    Then I press "Log in"
    Then I should see "Thank you for loging in. You can start your evaluation now"
    # Then I start evaluation
    # Then I should see "Select Topics"
    # Then I select "Quiz" from "Quiz type"
    # Then I press "Select Topics"
    # Then I should see "<"
    # And I should see ">"
    # Then I check "Divide and conquer"
    # And I press "Save Your Answer"
    # Then I finish evaluation after "1" questions
    # Then I should see "Total 1/1"
    # And I should see "Your Answer: Divide and conquer"
    # And I should see "Answer: Divide and conquer"
    # And I should not see "<"
    # And I should not see ">"
    
    
Feature: student login to see flashcard
  
  In order to use the website
  As a student
  I want to be able to login and take quiz
  
  Background: students in database
    Given the following students exist:
    | username        | email             | password     |password_confirmation | 
    | Projna          | duopoka2@gmail.com|1234          |1234                  | 
  
    Given the following topics exist:
      | name |
      | Data Structures and Algorithms |
      | Programming |
      | Basic Mathematics |
 
   
    Given the following question types exist:
      | question_type |
      | MCQ           |
      | Short Answer  |
  
    Given the following MCQ problems exist:
      | topic                                | question                              |question_type   |remark                                                                                                           |option1       |answer1|option2               |answer2|option3            |answer3|option4           |answer4|
      | Data Structures and Algorithms       | Quick sort algorithm is an example of?|MCQ             |Quick sort divides the list using pivot and then sorts in recursive manner. It uses divide and conquer approach. |Greed approach|false  |Improved binary search|false  |Dynamic programming|false  |Divide and conquer|true  |
    
   
  Scenario: 'Student login and see flashcard'
    When I am on the homepage 
    Then I should see "Start Evaluation!"
    And I start evaluation
    # Then I should see "Student Login"
    # And I fill in "Email" with "duopoka2@gmail.com"
    # And I fill in "Password" with "1234"
    # And I check "Remember me on this computer"
    # Then I press "Log in"
    # Then I should see "Thank you for loging in. You can start your evaluation now"
    # Then I start evaluation
    Then I should see "Select Topics"
    Then I select "Flashcard" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    And I should see "Show Answer"
    And I should see "Quit Evaluation"
    Then I follow "Show Answer"
    And I should see "Answer:"
    And I should see "Remark:"
    And I should see "Hide Answer"
    And I should see ">"
    And I should see "<"
    
    
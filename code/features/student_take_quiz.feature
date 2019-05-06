Feature: quiz taken by student
  
  In order to use the website
  As a student
  I want to be able to take the quiz
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
      | topic                                | question                              |question_type   |remark                                                                                                           |option1        |answer1|option2               |answer2|option3            |answer3|option4           |answer4|
      | Data Structures and Algorithms       | Quick sort algorithm is an example of?|MCQ             |Quick sort divides the list using pivot and then sorts in recursive manner. It uses divide and conquer approach. |Greedy approach|false  |Improved binary search|false  |Dynamic programming|false  |Divide and conquer|true  |
    
    Given the following short problems exist:
      |topic                         |question                                                               |question_type|answer|remark                                                                                    |
      |Data Structures and Algorithms|Which data structures are used for Depth-first search (DFS) of a graph?|Short Answer |Stack |Queue is used for breadth first traversal whereas stack is used for depth first traversal.|


#Evaluating correct MCQ answer case  
  Scenario: 'Evaluating correct answer'
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
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    Then I check "Divide and conquer"
    And I press "Save Your Answer"
    Then I finish evaluation after "1" questions
    Then I should see "Total 1/1"
    And I should not see "<"
    And I should not see ">"

#Evaluating wrong MCQ answer case  
  Scenario: 'Evaluating wrong MCQ answer'
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
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    Then I check "Greedy approach"
    And I press "Save Your Answer"
    Then I finish evaluation after "1" questions
    Then I should see "Total 0/1"
    And I should not see "<"
    And I should not see ">"

#Evaluating NO/Blank MCQ answer case  
  Scenario: 'Evaluating NO/Blank MCQ answer'
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
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    Then I finish evaluation after "1" questions
    Then I should see "Total 0/1"
    And I should not see "<"
    And I should not see ">"    

#For evaluating the short answer questions  
  Scenario: 'Start Evaluation'
    When I am on the homepage 
    Then I should see "Start Evaluation!"
    # And I start evaluation
    # Then I should see "Student Login"
    # And I fill in "Email" with "duopoka2@gmail.com"
    # And I fill in "Password" with "1234"
    # And I check "Remember me on this computer"
    # Then I press "Log in"
    # Then I should see "Thank you for loging in. You can start your evaluation now"
    Then I start evaluation
    Then I should see "Select Topics"
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    When I follow ">"
    And I follow ">"
    And I fill in "student_answer" with "Stack"
    And I press "Save Your Answer"
    Then I finish evaluation after "3" questions
    #Then I should see "Total 1/3"
    #And I should see "Your Answer: "
    And I should see ">"
    And I should not see "<"
    Then I follow ">"
    #And I should see "Your Answer: "
    # And I should see ">"
    # And I should see "<"
    # Then I follow ">"
    # And I should see "Your Answer: Stack"
    # And I should not see ">"
    # And I should see "Quit Evaluation"
   
#Short answer question with wrong answer, verify the score report 
  Scenario: 'Start Evaluation'
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
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    When I follow ">"
    And I follow ">"
    And I fill in "student_answer" with "Queue"
    And I press "Save Your Answer"
    Then I finish evaluation after "3" questions
    #Then I should see "Total 0/3"
    
#Short answer question with case of the answer changed, should still work, verify based on the score report
  Scenario: 'Short answer question with case of the answer changed'
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
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    When I follow ">"
    And I follow ">"
    And I fill in "student_answer" with "stack"
    And I press "Save Your Answer"
    Then I finish evaluation after "3" questions
    #Then I should see "Total 1/3"
 
 #short answer evaluation with blank answer, verify using the score report
  Scenario: 'Short answer evaluation with blank answer'
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
    Then I select "Quiz" from "Quiz type"
    Then I press "Select Topics"
    Then I should see "<"
    And I should see ">"
    When I follow ">"
    And I follow ">"
    And I fill in "student_answer" with ""
    And I press "Save Your Answer"
    Then I finish evaluation after "3" questions
    #Then I should see "Total 0/3"
    
  

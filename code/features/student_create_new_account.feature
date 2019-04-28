Feature: student create new account
  
  In order to use the website
  As a student
  I want to be able to create new account
  
  Scenario: 'New student log in'
    When I am on the homepage 
    Then I should see "Start Evaluation!"
    And I start evaluation
    Then I should see "Student Login"
    And I should see "New Student? Sign Up!."
    When I am on the user_signup page
    Then I should see "Student Sign Up"
    And I fill in "Username" with "Projna"
    And I fill in "Email" with "duopoka2@gmail.com"
    And I fill in "Password" with "1234"
    And I fill in "Password confirmation" with "1234"
    Then I press "Create My Account"
    Then I should be on the homepage
    Then I should see "Please log in to continue with CSCE 625 Evaluation!"
  
  
  
  # Scenario: 'Start Evaluation'
  #   When I am on the homepage 
  #   Then I should see "Start Evaluation!"
  #   And I start evaluation
  #   Then I should see "Student Login"
  #   And I should see "New Student? Sign Up!."
  #   When I am on the user_signup
  #   Then I press "Create My Account"
  #   Then I should see "Welcome to CSCE 625 Student Self-Evaluation"
  #   And I press "Start Evaluation!"
  #   Then I should see "Select Topics"
  #   Then I select flashcards
  #   And I press "Select Topics"
  #   Then I should see "Show Answer"
  #   And I should not see "Remark"
  #   And I follow ">"
  #   And I follow ">"
  #   And I follow "Show Answer"
  #   Then I should see "Remark"
  #   And I follow "Hide Answer"
  #   Then I should not see "Remark"
    
  # Scenario: 'Start Evaluation'
  #   When I am on the homepage 
  #   Then I should see "Start Evaluation!"
  #   And I start evaluation
  #   Then I should see "Select Topics"
  #   Then I select flashcards
  #   And I press "Select Topics"
  #   Then I should see "Show Answer"
  #   And I should not see "Remark"
  #   And I follow ">"
  #   And I follow ">"
  #   And I follow "Show Answer"
  #   Then I should see "Remark"
  #   And I follow "Hide Answer"
  #   Then I should not see "Remark"
    
  
    

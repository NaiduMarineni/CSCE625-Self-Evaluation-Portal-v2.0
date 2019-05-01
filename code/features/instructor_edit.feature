Feature: edit profile by instructor
  
  In order to update my profile
  As an instructor
  I want to be able to edit my profile
  Background:
    Given the following instructors exist:
      | name        | email           | password     |password_confirmation | admin | activated |
      | admin       | admin@admin.com |123456        |123456                |  true | true      |
      | Hang Li     |hangli@tamu.edu  |123456        |123456                | true  | true      |
      | Hanna       |hanna@tamu.edu   |123456        |123456                | true  | true      |

  Scenario: 'Update profile'
    When I log in with hanna's information
    Then I click Settings
    Then I should see "Update your profile"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Save Changes"
    Then I should see "Profile updated"
    
  

    

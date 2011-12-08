Feature: Staff
  As a site owner
  I need my staff to work on the site
  So they can look after my customers

  Scenario: Staff use the site
    Given I am a member of staff
    When I login to admin
    Then I should see the admin dashboard
    

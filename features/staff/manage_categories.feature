Feature: Manage categories
  As I site owner
  I want my staff to manage categories
  So I can optimise the organisation and sale of products

  Scenario: Staff Manage Categories
    Given I am logged in as staff
    And there are some categories
    When I admin categories
    Then I should see some categories


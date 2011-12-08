Feature: Manage Categorization
  A categorization is a relationship between a product and a category
  As a site owner
  I want my staff to manage categorizations
  So that products can be categorized and categories can connect related products

  Scenario: Manage Categorizations
    Given I am logged in as staff
    And there are some categorizations
    When I admin categorizations
    Then I should see some categorizations



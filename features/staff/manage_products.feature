Feature: Staff manage products
  As a site owner
  I want my staff to manage products
  So I can control what my site sells

  Scenario: Staff view products
    Given I am logged in as staff
    And there are some products
    When I admin products
    Then I should see some products

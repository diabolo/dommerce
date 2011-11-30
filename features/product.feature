Feature: Products feature
  As a site owner
  I want products to be viewable on the site
  So they can be sold

  Scenario: View a product
    Given there is a product
    When I view the product
    Then I should see the product

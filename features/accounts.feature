Feature: Accounts
  In order to establish long term customer relationships
  As I site owner
  I want customers to have an account

  @wip
  Scenario: Register as new customer
    Given I am logged out
    When I register
    Then I should have an account

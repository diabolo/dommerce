module AccountsStepHelper
  def no_op
    # do nothing
  end

  def register_as(name="sandy")
    visit new_registration_path
  end
end
World(AccountsStepHelper)

Given /^I am logged out$/ do
  no_op
end

When /^I register$/ do
  register_as
    pending # express the regexp above with the code you wish you had
end

Then /^I should have an account$/ do
    pending # express the regexp above with the code you wish you had
end


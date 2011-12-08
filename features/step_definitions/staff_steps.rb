module UserStepHelper
  class TUser
    attr_accessor :name, :email, :password
  
    def initialize(name)
      @name = name
      @email = "#{name}.#{name}@example.com".downcase
      @password = "#{name}password"
    end
  end

  def create_user(name)
    TUser.new(name)
  end

  def bad_password
    'wibbletastic'
  end
  
  def bad_email
    'wibble@badexample.com'
  end
end
World(UserStepHelper)

module StaffHelper
  def create_staff(name)
    user = create_user(name)
    AdminUser.create!(
      :email => user.email,
      :password => user.password,
      :password_confirmation => user.password
    )
    user
  end

  def login_to_admin(user)
    visit admin_dashboard_path
    fill_in 'admin_user_email', :with => user.email
    fill_in 'admin_user_password', :with => user.password
    click_button "Login"
  end
end
World(StaffHelper)

Given /^I am a member of staff$/ do
  @I = create_staff('I')
end

Given /^I am logged in as staff$/ do
  @I = create_staff('I')
  login_to_admin(@I)
end

When /^I login to admin$/ do
  login_to_admin(@I)
end

Then /^I should see the admin dashboard/ do
  page.should have_css '.logged_in.admin_dashboard'
end


Given /^there is a (\w+)$/ do |object|
  Fabricate object.to_sym
end

Given /^there are some (\w+)$/ do |pluralized_object|
  some.times{ Fabricate pluralized_object.singularize.to_sym }
end

When /^I admin (\w+)$/ do |pluralized_object|
  visit eval("admin_#{pluralized_object}_path")
end

Then /^I should see some (\w+)$/ do |pluralized_object|
  page.should have_css("##{pluralized_object} tbody tr", :count => some) 
end

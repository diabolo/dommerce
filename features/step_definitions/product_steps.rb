Given /^there is a product$/ do
  Product.create
end

Given /^there are some products$/ do
  some.times{ Fabricate :product }
end

When /^I view the product$/ do
  visit product_path(Product.last)
end

When /^I admin products$/ do
  visit admin_products_path
end

Then /^I should see the product$/ do
  page.should have_css('#product')
end

Then /^I should see some products$/ do
  page.should have_css('#products tbody tr', :count => some) 
end


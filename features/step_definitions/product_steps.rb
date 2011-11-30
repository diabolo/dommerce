Given /^there is a product$/ do
  Product.create
end

When /^I view the product$/ do
  visit product_path(Product.last)
end

Then /^I should see the product$/ do
  page.should have_css('#product')
end

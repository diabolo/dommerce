require 'spec_helper'

module CategorizationSpecHelper 
  def default_attributes
    {
      :product => Fabricate(:product),
      :category => Fabricate(:category)
    }
  end
end
describe Categorization do
  include CategorizationSpecHelper

  %w(category product).each do |relative|
    it "should be invalid without #{relative}" do
      Categorization.create(default_attributes.except(relative.to_sym)).should_not be_valid
    end
  end
end

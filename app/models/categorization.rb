class Categorization < ActiveRecord::Base
  belongs_to :product
  belongs_to :category

  validates_presence_of :product, :category
end

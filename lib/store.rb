class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0 }
  validate :product_line, on: :create
  def product_line
    if mens_apparel == false && womens_apparel == false
      errors.add(:product_line, "need to carry at least one product line")
    end
  end
end

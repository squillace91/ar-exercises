class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: "name should have at least 3 characters"}
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_have_apparel

  def must_have_apparel
    if !mens_apparel? && !womens_apparel?
      errors.add(:name, "must have an apparel")
    end
  end
end

class Admin::Sale < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  before_save :multiplication
  def multiplication
    amount = quantity * 5
  end
end

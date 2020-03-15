class Sale < ApplicationRecord
  # before a sale, generate a new uuid
  before_create :populate_uuid

  belongs_to :book

  # validation to make sure payment is AT LEAST 50c for stripe to process payment
  validates_numericality of :price,
  greater_than: 49, message: "Price must be at least 50 cent"

  private

  #Generate a universal unique id per book sale
  def populate_uuid
    self.uuid = SecureRandom.uuid()
  end
end

class Receipt < ActiveRecord::Base
  attr_accessible :city, :date_of_purchase, :guarantee_number, :model, :place

  # ============
  # Associations
  # ============
  belongs_to :user

  # ============
  # Validations
  # ============
  validates :city, presence: true
  validates :date_of_purchase, presence: true
  validates :guarantee_number, presence: true
  validates :model, presence: true
  validates :place, presence: true
end

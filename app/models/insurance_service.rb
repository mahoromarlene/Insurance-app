class InsuranceService < ApplicationRecord
  belongs_to :company, optional: true
  has_many :users, through: :request

  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: {greater_than: 0}
end

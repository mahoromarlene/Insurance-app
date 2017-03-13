class InsuranceService < ApplicationRecord
  belongs_to :company, optional: true
  has_many :requests
  has_many :users, through: :requests

  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: {greater_than: 0}
end

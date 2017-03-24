class InsuranceService < ApplicationRecord
  belongs_to :company, optional: true
  has_many :users, through: :requests
  has_many :requests

  validates :name, presence: true
  validates :description, presence: true
end

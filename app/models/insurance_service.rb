class InsuranceService < ApplicationRecord
  belongs_to :company
  has_many :users, through: :request
end

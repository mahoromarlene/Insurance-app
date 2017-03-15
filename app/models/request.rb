class Request < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :insurance_service, optional: true
end

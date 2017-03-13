class Request < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :Insurance_service, optional: true
  belongs_to :dashboard, optional: true
end

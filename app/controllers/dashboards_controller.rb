class DashboardsController < ApplicationController
  def client
    # @insurance_services = current_user.insurance_services
    # @requests = current_user.requests

  end

  def company
    @company = current_user.company
  end
end

class DashboardsController < ApplicationController
  def client
    # @insurance_services = current_user.insurance_services
    # @requests = current_user.requests
    @companies = Company.all
    @insuranceservices = InsuranceService.all

  end

  def company
    @company = current_user.company
    @companies = Company.all
    @insuranceservices = InsuranceService.all
  end
end

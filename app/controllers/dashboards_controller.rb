class DashboardsController < ApplicationController
  def client
    # @insurance_services = current_user.insurance_services
    # @requests = current_user.requests

  end

  def company
    @company = current_user.company
    # @requests = Request.all
    # @insuranceservices = current_user.company.insuraceservices
    # if request && request.insurance_service.company.current_user
    #   request = Request.find_by(id: params[:id])
    # else
    #   #do nothing
    # end
  end
end

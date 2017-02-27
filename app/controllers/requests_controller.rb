class RequestsController < ApplicationController

  def new
    
  end

  def create
    request = Request.new(user_id: current_user.id, insurance_service_id: insurance_service.id)
    if request.save
      redirect_to "/requests#{request.id}"
    else
      redirect_to "insurance_services#{insurance_service.id}"
    end
  end
end

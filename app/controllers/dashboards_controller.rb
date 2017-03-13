class DashboardsController < ApplicationController
  def show
    @dashboard = Dashboard.find_by(id: params[:id])
  end

  def new
    @dashboard = Dashboard.new
    @request = Request.find_by(user_id: params[:user_id])
  end

  def create
    @dashboard = Dashboard.new(user_id: current_user.id, request: params[:request])
    @dashboard.save
    redirect_to "/dashboards/#{@dashboard.id}"
  end
end

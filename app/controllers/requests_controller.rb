class RequestsController < ApplicationController


  def index
    @requests = Request.all
  end

  def show
    @request = Request.find_by(id: params[:id])
  end

  def new
    @request = Request.new
    @insuranceservices = InsuranceService.all
    @companies = Company.all
  end

  def create
    @request = Request.new({user_id: current_user.id, insurance_service_id: params[:insurance_service_id], first_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], phone_number: params[:phone_number]})
    if @request.save
      redirect_to "/requests/#{@request.id}"
    else
      render 'new'
    end
  end

  def edit 
    @request = Request.find_by(id: params[:id])
  end

  def update
    @request = Request.find_by(params[:id])
    @request.insurance_service_id = params[:insurance_service_id]
    @request.first_name = params[:first_name]
    @request.last_name = params[:last_name]
    @request.description = params[:description]
    @request.email = params[:email]
    @request.phone_number = params[:phone_number]
    @request.save
    redirect_to "requests/#{@request.id}"
  end

  respond_to? :js

  def approved
    @request = Request.find(params[:id])
    @request.update(approved: true)
  end
end

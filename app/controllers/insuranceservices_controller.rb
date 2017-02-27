class InsuranceservicesController < ApplicationController

  def index
    @insuranceservices = InsuranceService.all
  end

  def show
    @insuranceservice = InsuranceService.find_by(id: params[:id])
  end

  def new
    @insuranceservice = InsuranceService.new
    @companies = Company.all
  end

  def create
    @insuranceservice = InsuranceService.new({name: params[:name], description: params[:description], price: params[:price], company_id: params[:company_id]})
    @insuranceservice.save
    redirect_to "/insuranceservices/#{@insuranceservice.id}"
  end

  def edit
    @insuranceservice = InsuranceService.find_by(id: params[:id])
    @companies = Company.all
  end

  def update
    @insuranceservice = InsuranceService.find_by(id: params[:id])
    insuranceservice.name = params[:name]
    insuranceservice.description = params[:description]
    insuranceservice.price = params[:price]
    insuranceservice.company_id = params[:company_id]
    @insuranceservice.save
  end

  def destroy
    @insuranceservice = InsuranceService.find_by(id: params[:id])
    @insuranceservice.destroy 
  end
end

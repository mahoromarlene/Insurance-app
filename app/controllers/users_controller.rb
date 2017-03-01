class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      if params['is_company'] == 'Yes'
        redirect_to "/companies/new"
      else
        redirect_to "/companies"
      end
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to "/signup"
    end
  end

end

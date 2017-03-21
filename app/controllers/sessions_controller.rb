class SessionsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.is_company
        redirect_to "/company_dashboard"
      else
        redirect_to "/client_dashboard"
      end
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end



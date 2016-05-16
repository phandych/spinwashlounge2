class SessionsController < ApplicationController
  layout 'admin_login'
  def new
  end

  def create
  	@user = User.find_by(email: params[:session][:email])
  	if @user && @user.authenticate(params[:session][:password])
  		log_in @user
  		redirect_to root_path
  	else
  		flash[:danger] = "Email or Password Invalid"
  		render 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end
end

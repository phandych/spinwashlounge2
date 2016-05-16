class UsersController < ApplicationController
  def new
  end

  private

  	def admin_user
      redirect_to root_path unless current_user.admin?
    end
end

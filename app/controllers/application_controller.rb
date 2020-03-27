class ApplicationController < ActionController::Base
  helper_method :is_admin!

  private
  def is_admin!
    redirect_to root_path unless current_user && current_user.admin
  end
end

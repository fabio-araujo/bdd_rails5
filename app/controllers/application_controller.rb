class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found

  def resource_not_found
    message = "The request you are looking for could not be found"
    flash[:alert] = message
    redirect_to root_path
  end
end

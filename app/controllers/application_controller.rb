class ApplicationController < ActionController::Base
  allow_browser versions: :modern 

  def route_not_found
    if request.path.start_with?('/admin') || request.path.start_with?('/admins')
      redirect_to admin_dashboards_path, alert: "Page not found. Redirected to dashboard."
    else
      redirect_to root_path, alert: "Page not found. Redirected to home."
    end
  end 

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_dashboards_path
    when User
      user_dashboard_path 
    else
      root_path
    end
  end
end

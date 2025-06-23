class ApplicationController < ActionController::Base
  allow_browser versions: :modern 

  def route_not_found
    if request.path.start_with?('/admin') || request.path.start_with?('/admins')
      redirect_to admin_dashboards_path, alert: "Page not found. Redirected to dashboard."
    end
  end 

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_dashboards_path
    else
      root_path
    end
  end
end

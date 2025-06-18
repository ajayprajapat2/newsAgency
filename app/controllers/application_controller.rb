class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern  

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_dashboards_path # or whatever path you want for admins
    when User
      user_dashboard_path # or root_path for regular users
    else
      root_path
    end
  end
end

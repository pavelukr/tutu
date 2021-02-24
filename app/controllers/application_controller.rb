class ApplicationController < ActionController::Base
  def after_sign_in_path_for(user)
    flash[:alert] = "Hello, #{user.first_name unless user.first_name.nil?}"
    if user.admin
      main_menu_path
    else
      search_path
    end
  end
end

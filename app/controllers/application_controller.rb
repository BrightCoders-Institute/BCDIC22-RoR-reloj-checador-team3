class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        admin_admin_menu_path
    end
end

module Refinery
  class AdminController < ActionController::Base
    #need to override a loadtime modification to this controller that used username column
    def restrict_controller
      if Refinery::Plugins.active.reject { |plugin| params[:controller] !~ Regexp.new(plugin.menu_match)}.empty?
        warn "'#{current_user.username}' tried to access '#{params[:controller]}' but was rejected."
        error_404
      end
    end

  end
end

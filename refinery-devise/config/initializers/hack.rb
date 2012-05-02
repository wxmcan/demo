#module Refinery::ApplicationController
 #extend ActiveSupport::Concern

 #included do # Extend controller
  #helper_method :home_page?,
    #:local_request?,
    #:just_installed?,
    #:from_dialog?,
    #:admin?,
    #:login?,
    #:current_refinery_user,
    #:refinery_user_signed_in?,
    #:refinery_user?

  #protect_from_forgery # See ActionController::RequestForgeryProtection

  #send :include, Refinery::Crud # basic create, read, update and delete methods

  #send :before_filter, :refinery_user_required?

  #send :after_filter, :store_current_location!,
    #:if => Proc.new {|c| send(:refinery_user?) }

  #if Refinery::Core.rescue_not_found
    #send :rescue_from, ActiveRecord::RecordNotFound,
      #ActionController::UnknownAction,
      #ActionView::MissingTemplate,
      #:with => :error_404
  #end
 #end

 #def current_refinery_user
  #current_user
 #end

 #def refinery_user_signed_in?
  #user_signed_in?
 #end

 #def refinery_user?
  #refinery_user_signed_in? && current_refinery_user.has_role?(:refinery)
 #end

 #def authenticate_refinery_user!
  #authenticate_user!
 #end

 #def store_location
  #session[:return_to] = request.fullpath
 #end

 #def redirect_back_or_default(default)
  #redirect_to(session[:return_to] || default)
  #session[:return_to] = nil
 #end

 #def just_installed?
  #::Role[:refinery].users.empty?
 #end
#end

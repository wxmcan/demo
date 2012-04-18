require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module RefineryDevise
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    #config.before_initialize do
      #require 'restrict_refinery_to_refinery_users'
    #end

    #config.to_prepare do

      #restrict access to refinery page and blog controllers and views to refinery users
      #PagesController.send :include, RestrictRefineryToRefineryUsers
      #PagesController.send :before_filter, :restrict_refinery_to_refinery_users

      #BlogController.send :include, RestrictRefineryToRefineryUsers
      #BlogController.send :before_filter, :restrict_refinery_to_refinery_users

      #restrict access to refinery admin controllers and views to refinery users
      #Refinery::AdminController.send :include, RestrictRefineryToRefineryUsers
      #Refinery::AdminController.send :before_filter, :restrict_refinery_to_refinery_users

      #Admin::RefinerySettingsController.send :include, RestrictRefineryToRefineryUsers
      #Admin::RefinerySettingsController.send :before_filter, :restrict_refinery_to_refinery_users

    #end

    config.autoload_paths += Dir["#{config.root}/lib/**/"] # to load files from lib directory, including subfolders
    config.before_initialize do
      require 'refinery_patch'
      require 'restrict_refinery_to_refinery_users'
    end
    
    config.to_prepare do    
      [::Refinery::ApplicationController].each do |c|
      #[::Refinery::ApplicationController, Refinery::Helpers].each do |c|
        c.send :include, ::RefineryPatch
      end
    
      ::Refinery::AdminController.send :include, ::RestrictRefineryToRefineryUsers
      ::Refinery::AdminController.send :before_filter, :restrict_refinery_to_refinery_users
    end

  end
end

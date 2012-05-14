require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module RefinerycmsDevise
  class Application < Rails::Application
    config.encoding = "utf-8"

    config.filter_parameters += [:password]

    config.assets.enabled = true

    config.assets.version = '1.0'
    config.autoload_paths += Dir["#{config.root}/lib/**/"] 
    config.before_initialize do
      require 'refinery_patch'
      require 'restrict_refinery_to_refinery_users'
    end
    
    config.to_prepare do    
      [::Refinery::ApplicationController].each do |c|
      #[::Refinery::ApplicationController, Refinery::Helpers].each do |c|
        c.send :include, ::RestrictRefineryToRefineryUsers
        c.send :include, ::RefineryPatch
      end
    
      ::Refinery::AdminController.send :include, ::RestrictRefineryToRefineryUsers
      ::Refinery::AdminController.send :before_filter, :restrict_refinery_to_refinery_users
    end

  end
end

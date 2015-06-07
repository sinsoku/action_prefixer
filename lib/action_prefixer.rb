require 'action_prefixer/version'

module ActionPrefixer
  module ActionPrefixes
    extend ActiveSupport::Concern

    included do
      before_action :expand_lookup_paths
    end

    def expand_lookup_paths
      lookup_context.prefixes = ["#{controller_path}/#{action_name}"] + lookup_context.prefixes
    end
  end

  class Railtie < ::Rails::Railtie
    initializer 'action_prefixer' do
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.send :include, ActionPrefixes
      end
    end
  end
end

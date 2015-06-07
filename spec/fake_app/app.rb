require 'action_controller/railtie'
require 'action_view/railtie'

module FakeApp
  class Application < Rails::Application
    config.secret_token = [*'A'..'z'].join
    config.session_store :cookie_store, :key => '_myapp_session'
    config.active_support.deprecation = :log
    config.eager_load = false
    config.root = File.dirname(__FILE__)
  end
end
FakeApp::Application.initialize!

# routes
FakeApp::Application.routes.draw do
  resources :users
end

# controllers
class ApplicationController < ActionController::Base; end
class UsersController < ApplicationController
  rescue_from Exception do |exception|
    render xml: exception, status: 500
  end

  def index; end
  def show; end
end

# helpers
module ApplicationHelper; end

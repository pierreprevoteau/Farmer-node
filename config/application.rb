require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'resque/server'
require 'resque-scheduler'
require 'resque/scheduler/server'
require 'resque-sliders'

Bundler.require(*Rails.groups)

module Farmer
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
  end
end

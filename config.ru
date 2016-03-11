ENV['SERVER_MODE'] = '1'
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

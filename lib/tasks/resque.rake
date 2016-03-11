require "resque/tasks"
require 'resque/scheduler/tasks'
task "resque:setup" => :environment
task :setup_schedule => :setup do
    require 'resque-scheduler'
    require 'jobs'
end
task :scheduler => :setup_schedule

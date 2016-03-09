Resque.redis = Redis.new(url: (ENV['REDISTOGO_URL'] || 'redis://192.168.99.100:32768'), :thread_safe => true)
Resque.schedule = YAML.load_file("config/resque_schedule.yml")

redis_host = ENV['REDIS_HOST'] || "192.168.99.100"
redis_port = ENV['REDIS_PORT'] || "32768"

Resque.redis = Redis.new(:host => redis_host, :port => redis_port, :thread_safe => true)

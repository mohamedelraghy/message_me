require 'resque/server'

if Rails.env.development?
    Resque.redis = Redis.new(host: 'localhost', port: '6379')
else
    uri = URI.parse(ENV['REDIS_URI'])
    Resque.redis = Redis.new(host: uri.host, port: uri.port, password: uri.password)
    Resque.redis = REDIS
end
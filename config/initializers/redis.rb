$redis = Redis.new(:host => 'localhost', :port => 6379)
if Rails.env.development?
  $redis = Redis.new(:host => 'localhost', :port => 6379)
else 
  Rails.env.production?
  ENV["REDISTOGO_URL"] ||= 'redis://localhost:6379'
uri = URI.parse(ENV["REDISTOGO_URL"])
$redis = REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

end 
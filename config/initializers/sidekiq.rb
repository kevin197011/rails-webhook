# frozen_string_literal: true

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis_host:6379/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis_host:6379/0' }
end

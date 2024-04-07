# frozen_string_literal: true

# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

require 'uri'
require 'net/http'
require 'json'

class AlertWorker
  include Sidekiq::Worker

  def perform(telegram_bot_token, chat_id, message)
    url = URI("https://api.telegram.org/bot#{telegram_bot_token}/sendMessage")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request['Content-Type'] = 'application/json'
    request.body = {
      chat_id:,
      text: message
    }.to_json

    response = http.request(request)
    Rails.logger.info("Telegram message sent to #{chat_id}: #{message}")
    Rails.logger.info("Telegram status #{response.read_body}")
  end
end

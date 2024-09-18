# frozen_string_literal: true

class SendAlertJob < ApplicationJob
  queue_as :default

  def perform(telegram_bot_token, chat_id, message)
    # Do something later
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

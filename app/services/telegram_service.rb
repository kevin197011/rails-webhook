# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'json'

class TelegramService
  def initialize(token)
    @token = token
  end

  def send_message(chat_id, text)
    url = URI("https://api.telegram.org/bot#{@token}/sendMessage")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request['Content-Type'] = 'application/json'
    request.body = {
      chat_id:,
      text:
    }.to_json

    response = http.request(request)
    Rails.logger.info("Telegram message sent to #{chat_id}: #{text}")
    Rails.logger.info("Telegram status #{response.read_body}")
  end
end

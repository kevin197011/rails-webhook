# frozen_string_literal: true

class AlertWebhookController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    render plain: 'Welcome to Rails-Webhook!'
  end

  def send
    telegram_bot_token = ENV['TELEGRAM_BOT_TOKEN']
    chat_id = params[:chat_id] || ENV['TELEGRAM_CHAT_ID']
    alert_params = JSON.parse(request.body.read)

    # Rails.logger.info("token: #{telegram_bot_token}")
    # Rails.logger.info("chat_id: #{chat_id}")

    alert_params['alerts'].each do |alert|
      message = alert['annotations']['message']
      # Rails.logger.info("message: #{message}")
      # AlertWorker.perform_async(telegram_bot_token, chat_id, message)
      SendAlertJob.perform_later(telegram_bot_token, chat_id, message)
    end
  end
end

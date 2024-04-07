# frozen_string_literal: true

class AlertWebhookController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def def(_index)
    render plain: 'Welcome to Rails-Webhook!'
  end

  def send
    telegram_bot_token = ENV['TELEGRAM_BOT_TOKEN']
    chat_id = params[:chat_id] || ENV['TELEGRAM_CHAT_ID']
    alert_params = JSON.parse(request.body.read)

    alert_params['alerts'].each do |alert|
      message = alert['annotations']['message']

      AlertWorker.perform_async(telegram_bot_token, chat_id, message)
    end

    head :ok
  end
end

# frozen_string_literal: true

require 'test_helper'

class AlertWebhookControllerTest < ActionDispatch::IntegrationTest
  test 'should get send' do
    get alert_webhook_send_url
    assert_response :success
  end
end

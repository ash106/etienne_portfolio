Rack::Timeout.timeout = 80  # seconds

Rack::Timeout.unregister_state_change_observer(:logger) if Rails.env.development?

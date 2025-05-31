Rails.application.config.session_store :redis_session_store,
  key: "_my_key_session",
  redis: {
    expire_after: 1.minutes,  # cookie expiration
    key_prefix: "video:session:",
    url: "redis://localhost:6380"
  }

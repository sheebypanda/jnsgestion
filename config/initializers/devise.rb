Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  config.secret_key = 'c418c8dff7a5b59023dcebed043951be431ffe38a52e4c18565dd82956d1e54666be8aa111ca572c16c588780268ec161ae6fc3b9c49a043eb2a1b13ab2817cf'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

end

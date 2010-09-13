# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_defaults_session',
  :secret      => 'edeb2758f6ce7e710373d07341a8c510d60031695b35653f4d054978aa2e371786244d1ce1061ddee76017f546fd958806e06d8a731da145bfc85d820a7c6b16'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

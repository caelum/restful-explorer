# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restfulie-explorer_session',
  :secret      => 'c34b5126dab6c5cce74459e19869b9175ba9927833bf153688fde938516a0681c2c4bf31b0ede73a0d063576d5e079c86e5c26869268748f525e604fb44a134d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

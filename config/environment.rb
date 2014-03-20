# Load the Rails application.
require File.expand_path('../application', __FILE__)

config.action_mailer.default_url_options = { :host => 'dry-taiga-5167.herokuapp.com' }  


# Initialize the Rails application.
Wikicollab::Application.initialize!

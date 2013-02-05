require 'cms/module_installation'

class BcmsTwitter::InstallGenerator < Cms::ModuleInstallation
  add_migrations_directory_to_source_root __FILE__

  # Add migrations to be copied, by uncommenting the following file and editing as needed.
  copy_migration_file '20130205180243_create_timelines.rb'

  def generate_twitter_configuration
    create_file "config/initializers/bcms_twitter_configuration.rb" do 
<<-RUBY_CODE
# Create a twitter client account for your site here: http://dev.twitter.com/apps/new
# Then fill in the values below.
Twitter.configure do |config|
  config.consumer_key = "YOUR_CONSUMER_KEY"
  config.consumer_secret = "YOUR_CONSUMER_SECRET"
  config.oauth_token = "YOUR_OAUTH_TOKEN"
  config.oauth_token_secret = "YOUR_OAUTH_TOKEN_SECRET"
end     
RUBY_CODE
      
    end
  end
end

# Twitter Module

This module adds twitter API capabilities to BrowserCMS.

## Features

* Recent Tweets - Show one or more tweets for a given user timeline.

## Installation

$ gem install bcms_twitter
$ rails g cms:install bcms_twitter

See the [Module Installation guide](https://github.com/browsermedia/browsercms/wiki/Installing-A-Module) for more details. 

### Twitter Account Setup

You will need to create a Twitter App account to use this. Follow the [Twitter Gem configuration](http://sferik.github.com/twitter/) instructions to do this. 


## Testing

In order to test this module, you will need to have a Twitter Application with the following information in a new initializer:

# config/initializers/twitter.rb
Twitter.configure do |config|
  config.consumer_key = YOUR_CONSUMER_KEY
  config.consumer_secret = YOUR_CONSUMER_SECRET
  config.oauth_token = YOUR_OAUTH_TOKEN
  config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
end
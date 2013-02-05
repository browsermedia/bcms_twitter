# Twitter Module

This module adds Twitter API capabilities to BrowserCMS.

## Features

* Recent Tweets - Show one or more tweets for a given user timeline.

## Installation

To set up this module, you will need to take the following steps:

1. Install the gem into your project.
2. Setup a Twitter API account.
3. Configure a TwitterUserTimeline portlet to pull from the user of your choice.
4. Style the output appropriately

### 1. Install the Gem

```
$ gem install bcms_twitter
$ rails g cms:install bcms_twitter
```

See the [Module Installation guide](https://github.com/browsermedia/browsercms/wiki/Installing-A-Module) for more details. 

### 2. Twitter Account Setup

You will need to create a Twitter App account to use this. Follow the [Twitter Gem configuration](http://sferik.github.com/twitter/) instructions to do this. An initializer is generated during installation that you will need to fill in.

### 3. Configure Portlet

Add the portlet to a page, specifying the Twitter account to display tweets from.

### 4. Style

Default template is configurable through the UI. No initial styling is provided.

## Contributing

If you want to setup and work on this module, in order to run tests you will have to setup/configue a Twitter app with the following information in a new initializer:

```
# config/initializers/bcms_twitter_account.rb
Twitter.configure do |config|
  config.consumer_key = YOUR_CONSUMER_KEY
  config.consumer_secret = YOUR_CONSUMER_SECRET
  config.oauth_token = YOUR_OAUTH_TOKEN
  config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
end
```

This file should be ignored by git, so you can test with your own account.
class Timeline < ActiveRecord::Base
  TIMEOUT = 10
  TTL = 30.minutes

  validates_presence_of :username

  def get_timeline(tweet_name, tweet_amount=1)
    # Remove the cached timeline if its expired
    if self.expires_at.nil? || self.expires_at < Time.now.utc
      Rails.cache.delete('Timeline.Tweets_'+ tweet_name + "_" + tweet_amount.to_s)
    end

    # Make sure to invalidate the cache if the amount chanages
    Rails.cache.fetch('Timeline.Tweets_'+ tweet_name + "_" + tweet_amount.to_s) { get_timeline_from_twitter(tweet_amount) }
  end

  private

  def get_timeline_from_twitter(tweet_amount=1)
    begin
      # New expires time for this timeline
      update_attribute(:expires_at, Time.now.utc + TTL)
      Timeout.timeout(TIMEOUT) {
        options = {}
        if tweet_amount != 0
          options[:count] = tweet_amount
        end
        content = Twitter.user_timeline(self.username, options)
      }
    rescue SocketError, Timeout::Error, Twitter::Error => exception
      logger.error  "Couldn't fetch Twitter Timeline: " + exception.message + "\n " + exception.backtrace.join("\n ")
      return []
    end

  end

end
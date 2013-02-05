require 'test_helper'

class TimelineTest < ActiveSupport::TestCase
  test "Twitter configuration is set up." do
    @client = Twitter::Client.new
    assert @client.credentials?, "For tests to work, you must configure a global Twitter API account. See https://github.com/browsermedia/bcms_twitter/blob/master/README.markdown"
  end
    
  test "create timeline" do
    @timeline = FactoryGirl.create(:timeline)
    assert @timeline
    assert_equal("TestAccount", @timeline.username)
  end
end

class TwitterUserTimelinePortlet < Portlet

  enable_template_editor true
     
  def render
    raise ArgumentError, "You must specify a Twitter username to display tweets from." if self.username.blank?
    @title = self.name
    @items = Timeline.find_or_create_by_username(self.username).get_timeline(self.username, self.limit.to_i)

  end
    
end
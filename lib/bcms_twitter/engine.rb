require 'browsercms'
require 'timeout'
require 'twitter'

module BcmsTwitter
  class Engine < Rails::Engine
    include Cms::Module
  end
end
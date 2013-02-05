# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_twitter/version"

Gem::Specification.new do |spec|
  spec.name = "bcms_twitter"
  spec.rubyforge_project = spec.name
  spec.version = BcmsTwitter::VERSION
  spec.summary = "A Bcms Twitter Module for BrowserCMS"
  spec.author = "BrowserMedia" 
  spec.email = "github@browsermedia.com" 
  spec.homepage = "http://www.github.com/browsermedia/bcms_twitter"
  spec.files = Dir["{app,config,db,lib}/**/*"]
  spec.files -= Dir["app/views/layouts/templates/default.html.erb"]
  spec.files -= Dir["db/migrate/*_browsercms_*.rb"]
  spec.files -= Dir["lib/tasks/build_gem.rake"]
  spec.files += Dir["public/bcms/twitter/**/*"]

  spec.files += Dir["Gemfile", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt" ]
  spec.test_files += Dir["test/**/*"]

  spec.add_dependency('browsercms', "~>3.3.3")
  spec.add_dependency('twitter', "~>4.5.0")
  
  spec.require_paths = ["lib"]
  spec.extra_rdoc_files = ["README.markdown" ]
end
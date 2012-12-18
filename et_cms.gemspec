$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "et_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "et_cms"
  s.version = EtCms::VERSION
  s.authors = ["TODO: Your name"]
  s.email = ["TODO: Your email"]
  s.homepage = "TODO"
  s.summary = "TODO: Summary of EtCms."
  s.description = "TODO: Description of EtCms."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "ckeditor", "3.7.3"
  s.add_dependency "formtastic", "2.2.1"
  s.add_dependency "friendly_id", "4.0.9"
  s.add_dependency "sass-rails", "3.2.5"
  s.add_dependency "less-rails"
  s.add_dependency 'coffee-rails', '~> 3.2.1'
  s.add_dependency 'execjs'
  s.add_dependency 'therubyracer', '0.10.2'
  s.add_dependency "twitter-bootstrap-rails", "2.1.9"
  s.add_dependency "devise", "2.1.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end

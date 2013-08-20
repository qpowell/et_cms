$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "et_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "et_cms"
  s.version = EtCms::VERSION
  s.authors = ["Scott Olsen"]
  s.email = ["scott@entretechno.com"]
  s.homepage = "https://github.com/entretechno/et_cms"
  s.summary = "Cms that uses devise, ckeditor, and the twitter bootstraps"
  s.description = "Cms that uses devise, ckeditor, and the twitter bootstraps"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "ckeditor"
  s.add_dependency "formtastic"
  s.add_dependency "friendly_id"
  s.add_dependency "sass-rails"
  s.add_dependency "less-rails"
  s.add_dependency 'coffee-rails'
  s.add_dependency 'execjs'
  s.add_dependency 'therubyracer'
  s.add_dependency "twitter-bootstrap-rails"
  s.add_dependency "ancestry"
  s.add_dependency "devise"

  s.add_development_dependency "sqlite3"
end

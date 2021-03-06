$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sample_plugin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sample_plugin"
  s.version     = "0.0.1"
  s.authors     = ["kavyavj"]
  s.email       = ["kavya.vj@connovatech.com"]
  s.homepage    = "https://github.com/kavyavj/sample_plugin"
  s.summary     = "Sample plugin."
  s.description = "This is a POC."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.4"

  s.add_development_dependency "sqlite3"
end

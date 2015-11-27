$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "protectedplanet_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "protectedplanet_cms"
  s.version     = ProtectedplanetCms::VERSION
  s.authors     = ["Andrea Rossi"]
  s.email       = ["andrea.rossi@unep-wcmc.org"]
  s.homepage    = "http://www.protectedplanet.net"
  s.summary     = "A brief summary of ProtectedplanetCms"
  s.description = "A brief description of ProtectedplanetCms"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "comfortable_mexican_sofa", "~> 1.12.0"

  s.add_development_dependency "sqlite3"
end

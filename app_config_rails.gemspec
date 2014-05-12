$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "app_config_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "app_config_rails"
  s.version     = AppConfigRails::VERSION

  s.authors     = ["Dale Campbell"]
  s.email       = ["oshuma@gmail.com"]
  s.homepage    = "https://github.com/Oshuma/app_config_rails"

  s.summary     = "Rails plugin for the AppConfig gem."
  s.description = "Rails plugin for the AppConfig gem."

  s.license = 'MIT'

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.add_dependency "app_config", "~> 2.4.1"
  s.add_dependency "rails", "~> 3.2.18"

  s.add_development_dependency "sqlite3"
end

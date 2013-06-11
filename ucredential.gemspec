$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ucredential/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ucredential"
  s.version     = Ucredential::VERSION
  s.authors     = "Gabriel Poça"
  s.email       = "gabrielpoca@gmail.com"
  s.homepage    = "http://github.com/gabrielpoca"
  s.summary     = "Summary of Ucredential."
  s.description = "Description of Ucredential."

  #s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files = `git ls-files`.split("\n")

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "resque"

  s.add_development_dependency "sqlite3"
end

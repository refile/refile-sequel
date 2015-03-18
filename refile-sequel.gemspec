Gem::Specification.new do |gem|
  gem.name          = "refile-sequel"
  gem.version       = "0.0.1"

  gem.required_ruby_version = ">= 2.1.0"

  gem.summary       = "Sequel ORM integration of the Refile gem"
  gem.description   = "Sequel ORM integration of the Refile gem"
  gem.homepage      = "https://github.com/janko-m/refile-sequel"

  gem.authors       = ["Janko Marohnić"]
  gem.email         = ["janko.marohnic@gmail.com"]

  gem.license       = "MIT"

  gem.files         = Dir["README.md", "LICENSE.txt", "lib/**/*"]
  gem.require_path  = "lib"

  gem.add_dependency "refile", "~> 0.5"
  gem.add_dependency "sequel", "~> 4.0"

  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.1"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "sqlite3"
end

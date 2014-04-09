Gem::Specification.new do |s|
  s.name        = 'simple_crontab'
  s.version     = '0.0.1'
  s.date        = '2014-04-09'
  s.summary     = "Simple ruby crontab editing library."
  s.description = "Simple ruby crontab editing library."
  s.authors     = ["Marek Aufart"]
  s.email       = 'aufi.cz@gmail.com'
  s.files       = ["lib/simple_crontab.rb"]
  s.homepage    = 'https://github.com/aufi/simple_crontab'
  s.license     = 'MIT'

  #s.add_dependency 'exifr', "~> 1.1.3"

  s.add_development_dependency "rake", "~> 10.1.0"
  #s.add_development_dependency "rails", ">= 3.0.0"
  s.add_development_dependency "rspec", "~> 2.14.1"
  s.add_development_dependency "pry", "~> 0.9.12.2"
end
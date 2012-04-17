Gem::Specification.new do |gem|
  gem.name        = "deck"
  gem.version     = "1.0.0"
  gem.summary     = "A deck of cards"
  gem.description = "A simple 52 card deck."

  gem.authors     = ['Ralph Churchill']
  gem.email       = 'mrchucho@mrchucho.net'
  gem.homepage    = 'http://mrchucho.net'

  gem.files         = Dir['[A-Z]*', 'lib/**/*.rb', 'test/**/*.rb']
  gem.require_path  = 'lib'
  gem.test_files    = Dir[]
end


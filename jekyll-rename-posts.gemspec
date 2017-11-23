# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'jekyll-rename-posts'
  gem.version       = '0.1'
  gem.authors       = ['Nicolás Reynolds']
  gem.email         = ['fauno@endefensadelsl.org']
  gem.description   = %q{Allows to rename a post but keep a symlink to the new name}
  gem.summary       = %q{Allows to rename a post but keep a symlink to the new name}
  gem.homepage      = 'https://github.com/edsl/jekyll-rename-posts'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

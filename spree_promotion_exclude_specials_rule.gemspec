# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_promotion_exclude_specials_rule'
  s.version     = '2.2.2'
  s.summary     = 'Promtionrule for excluding special products'
  s.description = 'Creates an excludeflag on products to make it easy to exclude the product from promotions'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Simon Træls Ravn'
  s.email     = 'cs2@cs2.dk'
  s.homepage  = 'http://www.cs2.dk'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'

  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

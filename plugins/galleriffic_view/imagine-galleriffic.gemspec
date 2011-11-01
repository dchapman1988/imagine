# Encoding: UTF-8

Gem::Specification.new do |s|
  s.name              = %q{imagine-galleriffic}
  s.version           = %q{0.1.4}
  s.summary           = %q{Customizable view for Imagine}
  s.description       = %q{A jQuery plugin for rendering rich, fast-performing photo galleries}
  s.date              = %q{2011-11-01}
  s.email             = %q{david@isotope11.com}
  s.homepage          = %q{http://github.com/dchapman1988/imagine}
  s.rubyforge_project = %q{imagine}
  s.authors           = ['David Chapman']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.files             = Dir["app/**/*"] + [
    'imagine-gallerific.gemspec',
    'lib/imagine-galleriffic.rb'
  ] 
end

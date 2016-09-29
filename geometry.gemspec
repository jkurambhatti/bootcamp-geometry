# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "geometry/version"

Gem::Specification.new do |spec|
  spec.name          = 'geometry'
  spec.version       = Geometry::VERSION
  spec.authors       = ["Varun Sharma"]
  spec.email         = ["varunited@gmail.com"]
  spec.summary       = %q{Quintype's Bootcamp TDD Problem Set}
  spec.description   = %q{"It does simple math operations"}
  spec.homepage      = "https://github.com/varunited/bootcamp-geometry"
  spec.license       = "MIT"
end

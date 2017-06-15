# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keyboard_firmware_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "keyboard_firmware_generator"
  spec.version       = KeyboardFirmwareGenerator::VERSION
  spec.authors       = ["Erin Call"]
  spec.email         = ["hello@erincall.com"]

  spec.summary       = %q{Generate keyboard firmwares from Ruby}
  spec.description   = %q{Note that the firmware itself doesn't run in Ruby; the Ruby generates C code for compilation}
  spec.homepage      = "https://github.com/erincall/keyboard_firmware_generator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://no.pushing.allowed"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

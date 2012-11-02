# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gsync/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexander Wenzowski"]
  gem.email         = ["alexander@wenzowski.com"]
  gem.description   = %q{Deploys HTML5 Apps to Google Cloud Storage}
  gem.summary       = <<-EOF
    GSync simplifies the deployment of HTML5 Apps to Google Cloud Storage
    over the V2 XML API by mirroring the state of a local build folder 
    remotely.
  EOF
  gem.homepage      = "http://github.com/ent-io/closync"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gsync"
  gem.require_paths = ["lib"]
  gem.version       = GSync::VERSION

  gem.add_dependency('google_storage')
end

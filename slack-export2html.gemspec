# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'export2html/version'

Gem::Specification.new do |spec|
  spec.name          = 'slack-export2html'
  spec.version       = Export2html::VERSION
  spec.authors       = ['Ryosuke Yamazaki']
  spec.email         = ['n@kimaroki.jp']

  spec.summary       = %q{Slack export archive to HTML converter}
  spec.homepage      = 'https://github.com/nappa/slack-export2html'

  spec.platform      = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.3'

  if spec.respond_to?(:metadata)
    # Protect against public gem pushes!'
    spec.metadata['allowed_push_host'] = 'http://localhost'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'

  spec.add_dependency 'rubyzip', '~> 1.0'
  spec.add_dependency 'awesome_print', '~> 1.7'
  spec.add_dependency 'oj', '~> 2.16'
  spec.add_dependency 'erubis', '~> 2.7'
end

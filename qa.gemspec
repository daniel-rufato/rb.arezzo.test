# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'test-arezzo'
  spec.version       = '0.1'
  spec.authors       = ['Daniel Rufato']
  spec.email         = ['daniel.rufato@compasso.com.br']

  spec.summary       = 'BDD - Teste Arezzo'
  spec.homepage      = ''
  spec.licenses      = ['UNLICENSED']

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec)/})
  end

  spec.bindir = 'bin'

  spec.add_dependency 'capybara'
  spec.add_dependency 'report_builder'
  spec.add_dependency 'cucumber'
  spec.add_dependency 'cucumber_statistics'
  spec.add_dependency 'geckodriver-helper'
  spec.add_dependency 'rspec'
  spec.add_dependency 'site_prism'
  spec.add_dependency 'parallel_tests'
  spec.add_dependency 'selenium-webdriver'
  spec.add_dependency 'json-schema'
  spec.add_dependency 'jsonpath'
  spec.add_dependency 'json'
  spec.add_dependency 'savon'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
end

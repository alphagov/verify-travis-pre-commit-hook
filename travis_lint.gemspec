Gem::Specification.new do |s|
  s.name        = 'travis_lint'
  s.version     = '0.1.0'
  s.executables << 'travis_lint'
  s.summary     = 'Travis Yaml Linter'
  s.description = 'A simple gem to lint travis yaml, designed to work with pre-commit rather than to be published'
  s.authors     = ['@swilson96']
  s.email       = 'simon.wilson@digital.cabinet-office.gov.uk'
  s.homepage    = 'https://gds.blog.gov.uk/'
  s.files       = ['lib/travis_lint.rb']
  s.license     = 'MIT'
  s.metadata    = { 'source_code_uri' => 'https://github.com/alphagov/verify-travis-pre-commit-hook' }

  # This library is technically deprecated (see https://github.com/travis-ci/travis-yaml),
  # But the replacement https://github.com/travis-ci/travis-yml is not yet published.
  # Please update this gem to use travis-yml when you can.
  s.add_dependency 'travis-yaml'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end

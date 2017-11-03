Gem::Specification.new do |s|
  s.name        = 'travis_lint'
  s.version     = '0.1.0'
  s.executables << 'travis_lint'
  s.summary     = "Travis Yaml Linter"
  s.description = "A simple gem to lint travis yaml, designed to work with pre-commit rather than to be published"
  s.authors     = ["@swilson96"]
  s.homepage    = 'https://gds.blog.gov.uk/'
  s.files       = ["lib/travis_lint.rb"]
  s.license     = 'MIT'
end

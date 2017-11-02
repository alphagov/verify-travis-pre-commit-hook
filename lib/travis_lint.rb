require 'travis/yaml'

class TravisLint
  def self.validate filename
    puts "Linting: " + filename
    result = Travis::Yaml.parse! File.open(filename).read, filename
    puts result
    if (result.nested_warnings.any?)
      puts "Linting failed"
      false
    else
      true
    end
  end
end

require 'minitest/autorun'
require 'travis_lint'

class TravisLintTest < Minitest::Test
  def test_minimal_is_valid
    assert_equal true, TravisLint.validate('./test/examples/minimal.yml')
  end

  def test_example_is_valid
    assert_equal true, TravisLint.validate('./test/examples/example.yml')
  end

  def test_empty_is_invalid
    assert_equal false, TravisLint.validate('./test/examples/empty.yml')
  end

  def test_bad_language_is_invalid
    assert_equal false, TravisLint.validate('./test/examples/bad_language.yml')
  end

  def test_bad_yml_is_invalid
    assert_equal false, TravisLint.validate('./test/examples/not.yml')
  end
end

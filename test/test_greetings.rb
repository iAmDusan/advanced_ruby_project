require 'minitest/autorun'
require_relative '../lib/greetings'

class TestGreetings < Minitest::Test
  include Greetings

  def test_greet
    assert_equal "Hello, World!", greet
    assert_equal "Hello, Alice!", greet("Alice")
  end
end

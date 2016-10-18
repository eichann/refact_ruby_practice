
require 'test/unit'

class Sample
  def self.greeting
    'Hello, World!'
  end
end

class TestSample < Test::Unit::TestCase
  def test_greeting
    assert_equal 'Hello, World!', Sample.greeting
  end
end



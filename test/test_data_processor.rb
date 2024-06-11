require 'minitest/autorun'
require_relative '../lib/data_processor'

class TestDataProcessor < Minitest::Test
  def test_process
    data = "hello"
    processed_data = DataProcessor.process(data)
    assert_equal "HELLO", processed_data
  end
end
